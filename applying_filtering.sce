//By Manas,FOSSEE,IITB
// Creating signals with sampling frequency of 1000 Hz

Fs = 1000;
t = 0:1/Fs:1;
n = length(t);
f = linspace(0,Fs,length(t)); // Create frequency vectors
x1 = sin(2*%pi*10*t); // 10 Hz Sine Wave
x2 = sin(2*%pi*100*t); // 100 Hz Sine Wave
x = x1 + x2; // Combination of 10 Hz and 100 Hz Sine Wave
plot(t,x); // Time Domain representation of the sine waves 
X = fft(x)./(length(x)/2); // Creating frequency response of the signal
plot(f(1:n/2),abs(X(1:n/2))); // Frequency Domain representation 

// Design of a low-pass butterworth filter with 50 Hz cut off frequency
hz = iir(8,'lp','butt',50/Fs,[]);
[hzm,fr]=frmag(hz,256);
fr2 = fr.*Fs;
plot(fr2,hzm)

//To make it clearer, I overlap 2 graphs together:
plot(f(1:n/2),abs(X(1:n/2)),fr2,hzm);

//The green color line indicates the "passband”, or the allowed zone for the signal, and looks like it will pass through the 10 Hz component and eliminates the 100 Hz component!

// Applying filter to the signal
y = flts(x,hz);
Y = fft(y)./(length(x)/2);

// Compare the frequency domain of filtered signal with filter response

plot(f(1:n/2),abs(Y(1:n/2)),fr2,hzm);

//Finally, compare the original 10Hz signal with the filtered signal.
plot(t,x1,t,y);
legend(['x1';'y'])

//By Manas,FOSSEE,IITB
//Chebyshev window
clf()
N=64;
[w,df]=window('ch',N,[0.005,-1])
subplot(121);plot2d(1:N,w)
subplot(122)
n=256;[W,fr]=frmag(w,n);
plot2d(fr,20*log10(W))
 

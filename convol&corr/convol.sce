//By Manas,FOSSEE,IITB
//Linear Convolution
n=1:4
x=[1,2,3,4];
h=[1,1,1];
y=convol(x,h)
subplot(311)
plot2d3(x)
xtitle("Input Sequence [x]")
subplot(312)
plot2d3(h)
xtitle("h")
subplot(313)
plot2d3('gnn',y)
xtitle("Convolution")


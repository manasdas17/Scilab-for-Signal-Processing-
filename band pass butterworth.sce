//By Manas,FOSSEE,IITB
//function which designs an iir digital filter using analog filter designs and bilinear transformation .
hz=iir(3,'bp','butt',[.15 .25],[0 0]);
[hzm,fr]=frmag(hz,256);
plot2d(fr',hzm')
xtitle('Discrete IIR filter band pass  0.15&lt;fr&lt;0.25 ',' ',' ');
q=poly(0,'q');     //to express the result in terms of the delay operator q=z^-1
hzd=horner(hz,1/q)

//By Manas,FOSSEE,IITB
bedge=[0 .1;.15 .2;.25 .3;.35 .4;.45 .5];//Defining the bands
des=[0 1 0 .5 0];//Desired responses in each band
wate=[1 .025 1 1 1];//Relative error weights in each band
hn=eqfir(64,bedge,des,wate);//Output of lineart phase FIR filter co-efficients
[hm,fr]=frmag(hn,256);//Magnitude of FIR,IIR filters
plot2d(fr,hm);//Plots magnitude response at points fr
xtitle("5-band Filter using eqfir");

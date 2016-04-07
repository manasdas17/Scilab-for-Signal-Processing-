//By Manas,FOSSEE,IITB
[wft,wfm,fr]=wfir('lp',33,[.23 0],'kr',[5.6 0]);//Linear phase FIR filters
plot2d(fr,20*log10(wfm));//Plots filter response against grid fr
xgrid();
xtitle("LPF using wfir");

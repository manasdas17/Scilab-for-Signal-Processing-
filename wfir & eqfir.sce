//By Manas,FOSSEE,IITB
[wft,wfm,fr]=wfir('lp',33,[.23 0],'kr',[5.6 0]);
bedge=[0 .2;.2875 .5];
des=[1 0];
wate=[.025 1];
hn=eqfir(33,bedge,des,wate);
xsetech([0 0 1 .5])
plot2d(fr,20*log10(wfm));
xgrid();
xtitle('LPF with wfir','frequency(Hz)','amplitude')
xsetech([0 .5 1 .5])
[hm,fr]=frmag(hn,256);
plot2d(fr,20*log(hm));
xgrid()
xtitle('LPF with eqfir','frequency(Hz)','Amplitude(dB)')

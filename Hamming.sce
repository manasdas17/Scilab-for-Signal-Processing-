//By Manas,FOSSEE,IITB
// Hamming window
clf()
N=64;
w=window('hm',N)
subplot(121);plot2d(1:N,w)
subplot(122)
n=256;[W,fr]=frmag(w,n);
plot2d(fr,20*log10(W))


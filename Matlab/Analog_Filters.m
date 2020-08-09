
n = 20;
f = 16e3;

[zb,pb,kb] = butter(n,2*pi*f,'s');
[bb,ab] = zp2tf(zb,pb,kb);
[hb,wb] = freqs(bb,ab,4096);

[z1,p1,k1] = cheby1(n,0.1,2*pi*f,'s');
[b1,a1] = zp2tf(z1,p1,k1);
[h1,w1] = freqs(b1,a1,4096);

[z2,p2,k2] = cheby2(n,80,2*pi*f,'s');
[b2,a2] = zp2tf(z2,p2,k2);
[h2,w2] = freqs(b2,a2,4096);

[ze,pe,ke] = ellip(n,0.1,80,2*pi*f,'s');
[be,ae] = zp2tf(ze,pe,ke);
[he,we] = freqs(be,ae,4096);

plot(wb/(20e3*pi),mag2db(abs(hb)))
hold on;
plot(w1/(20e3*pi),mag2db(abs(h1)))
plot(w2/(20e3*pi),mag2db(abs(h2)))
plot(we/(20e3*pi),mag2db(abs(he)))
axis([0 2.5 -100 2])
grid
xlabel('Frequency (KHz)')
ylabel('Attenuation (dB)')
legend('Butterworth','Chebyshev1','Chebyshev2','Elliptical')
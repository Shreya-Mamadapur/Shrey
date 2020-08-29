%Ans4 bandpass using hamming
clc; clear; close all;

ws1=0.3*pi;
wp1=0.4*pi;
wp2=0.6*pi;
ws2=0.7*pi;
Rp=0.2; Rs=50;

roll_off = min((wp1-ws1),(ws2-wp2));
wc1 = (ws1+wp1)/2; wc2 = (wp2+ws2)/2;
M = ceil(6.6*pi/roll_off) + 1 
n=[0:M-1];

hd = ideal_lp(pi,M)+ideal_lp(wc1,M)-ideal_lp(wc2,M);
w_ham = (hamming(M)'); 
h = hd .* w_ham;
[db,mag,pha,grd,w] = freqz_m(h,[1]); delta_w = pi/500;

Rpd = -min(db((wp1/delta_w)+1:(wp2/delta_w)+1)), % Actual passband ripple
Asd = floor(-max(db(1:(ws1/delta_w)+1))), % Actual Attn


figure; stem(n,w_ham); title('Hamming window');
xlabel('n'); ylabel('w(n)');

figure; stem(n,hd); title('Ideal impulse response');
xlabel('n'); ylabel('hd(n)');
figure; stem(n,h); title('Hamming filtered impulse response');
xlabel('n'); ylabel('h(n)');

figure; plot(w/pi,db,'linewidth',1); title('Magnitude response in dB');
xlabel('Frequency (w/pi)'); ylabel('deciBels');


function hd = ideal_lp(wc,M);
% Ideal lowpass filter computation
% --------------------------------
% [hd] = ideal_lp(wc,M)
% hd = ideal impulse response between 0 to M-1
% wc = cutoff frequency in radians
%M = length of the ideal filter
%
alpha = (M-1)/2; n = [0:1:(M-1)];
m = n - alpha; fc = wc/pi; hd = fc*sinc(fc*m);
end


function [db,mag,pha,grd,w] = freqz_m(b,a);
% Modified version of freqz subroutine
% ------------------------------------
% [db,mag,pha,grd,w] = freqz_m(b,a);
% db = relative magnitude in dB computed over 0 to pi radians
% mag = absolute magnitude computed over 0 to pi radians
% pha = phase response in radians over 0 to pi radians
% grd = group delay over 0 to pi radians
%w = 501 frequency samples between 0 to pi radians
%b = numerator polynomial of H(z)(for FIR: b=h)
%a = denominator polynomial of H(z) (for FIR: a=[1])

[H,w] = freqz(b,a,1000,'whole');
H = (H(1:1:501))'; w = (w(1:1:501))';
mag = abs(H); db = 20*log10((mag+eps)/max(mag));
pha = angle(H); grd = grpdelay(b,a,w);

figure; plot(mag); title('Magnitude response');
xlabel('Frequency in Hz'); ylabel('Magnitude');
%figure; plot(pha); title('Phase response');
%figure; plot(grd); title('Group delay');
end
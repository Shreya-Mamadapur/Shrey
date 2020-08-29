clc; clear; close all;
wp = 0.2*pi; ws = 0.3*pi; roll_off = ws - wp;
M = ceil(6.2*pi/roll_off) + 1

n=[0:1:M-1];
wc = (ws+wp)/2, % Ideal filter cutoff frequency
hd = ideal_lp(wc,M); 
w_hann = (hann(M)'); 
h = hd .* w_hann;
[db,mag,pha,grd,w] = freqz_m(h,[1]); delta_w = 2*pi/1000;
Rp = -(min(db(1:1:wp/delta_w+1))); % Actual passband ripple

As = -round(max(db(ws/delta_w+1:1:501))) % Min stopband attenuation

figure; plot(w_hann); title('Hann window');
xlabel('n'); ylabel('w(n)');
figure; plot(hd); title('Ideal impulse response');
xlabel('n'); ylabel('hd(n)');
figure; plot(h); title('Hann filter impulse response');
xlabel('n'); ylabel('h(n)');

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
figure; plot(db); title('Magnitude response in dB');
%figure; plot(pha); title('Phase response');
%figure; plot(grd); title('Group delay');
end
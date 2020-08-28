%%
%
% sound file read/edit in Matlab
%
% author: Shreya
% 
%

clear; close all; clc;

% system sampling parameters
Fs_filter = 200000;

% acquire raw stereo data, data will be normalized from -1.0 to 1.0
[Y, FS] = audioread('69869__lg__thats-nice.wav', 'double');
%sound(Y,FS); %original audio

%Time-domain spectrums before and after isolating that's nice

Y = Y(:,1);
N1= length(Y);
t= (0:N1-1)/FS;
grid on
plot(t,Y); title('Time domain'); xlabel('Time in sec'); ylabel('Amplitude');
hold on;

%to isolate "that's nice"
samples = [FS, 2*FS]; %taking samples where-in "that's nice" is heard
[Y2, Fs] = audioread('69869__lg__thats-nice.wav', samples);
sound(Y2,Fs); 
Y2 = Y2(:,1);
N2= length(Y2);
t= (0:N2-1)/FS;

grid on
plot(t,Y2); 
legend('Before','After');

%Frequency-domain spectrums before and after isolating that's nice
freq1=fft(Y);
freq2=fft(Y2);
figure;
grid on
plot(real(freq1));
hold on;
plot(real(freq2)); title('Frequency domain');xlabel('Frequency'); ylabel('Amplitude');
legend('Before','After');



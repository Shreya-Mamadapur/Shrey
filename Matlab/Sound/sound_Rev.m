clear; close all; clc;

% system sampling parameters
Fs_filter = 200000;
Ts_filter = 1/Fs_filter;

% acquire raw stereo data, data will be normalized from -1.0 to 1.0
[Y, FS] = audioread('69869__lg__thats-nice.wav', 'double');
figure; plot(Y)
title('Original audio signal'); xlabel('Time'); ylabel('Amplitude');
%sound(Y,FS)
YRev = Y(end:-1:1);
figure; plot(YRev)
title('Reversed audio signal'); xlabel('Time'); ylabel('Amplitude');
sound(YRev,FS)
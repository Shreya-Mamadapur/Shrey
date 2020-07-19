 clc; clear; close all;
 x1 = [4,1,-1,1]
 y1=fft(x1);
 subplot(2,2,1);
 stem(y1);
 x2=[2,0,0,0,-1,0,0,0]
 y2=fft(x2); 
 subplot(2,2,2);
 stem(y2);
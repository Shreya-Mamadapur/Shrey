close all; clear; clc;
Fp = 50e3;
Fst = 80e3;
Rp = 0.3;
Rs = 100;
Fs = 1e6;

butterf = designfilt('lowpassiir','PassbandFrequency',Fp,'StopbandFrequency',Fst,'PassbandRipple',Rp,'StopbandAttenuation',Rs,'SampleRate',Fs,'DesignMethod','butter');

cheby1f = designfilt('lowpassiir','PassbandFrequency',Fp,'StopbandFrequency',Fst,'PassbandRipple',Rp,'StopbandAttenuation',Rs,'SampleRate',Fs,'DesignMethod','cheby1');

cheby2f = designfilt('lowpassiir','PassbandFrequency',Fp,'StopbandFrequency',Fst,'PassbandRipple',Rp,'StopbandAttenuation',Rs,'SampleRate',Fs,'DesignMethod','cheby2');

ellipf = designfilt('lowpassiir','PassbandFrequency',Fp,'StopbandFrequency',Fst,'PassbandRipple',Rp,'StopbandAttenuation',Rs,'SampleRate',Fs,'DesignMethod','ellip');


hfvt = fvtool(butterf,cheby1f,cheby2f,ellipf); %opens filter-visualisation tool 
rectangle('Position',[50,-30,30,30], 'EdgeColor','r'); %to highlight the transition in phase-response

legend(hfvt,'Butterworth', 'Chebyshev Type I','Chebyshev Type II','Elliptic') %labeling the responses

FilterOrders = [filtord(butterf) filtord(cheby1f) filtord(cheby2f) filtord(ellipf)] %to know the order of filter families
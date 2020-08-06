
Fpass = 350; 
Fstop = 400; 
Ap=1;
As=50;
Fs = 2000; 

% Design method defaults to 'equiripple' when omitted
fil = designfilt('lowpassfir','PassbandFrequency',Fpass,'StopbandFrequency',Fstop,'PassbandRipple',Ap,...
  'StopbandAttenuation',As,'SampleRate',Fs);

hvft = fvtool(fil);
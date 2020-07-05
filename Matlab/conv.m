clc;
clear all;
x0=0:20 
for n1 = 0:20
x(n1+1)= 0.9.^n1;
end;
%stem(x,x0);

yt= -20:0
for n2 = 0:20
y(n2+1)= 0.8^(-1*n2);
end;

%Since conv(f(t),g(t)) = cross correlation (f(t),g(-t))
cross = conv(x,y)
stem(cross)

autocorrX = conv(x,x)
%stem(autocorrX)



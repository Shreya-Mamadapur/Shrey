
clear all;
clc;
 t= 0:1:100;
 x(1:50)= t(1:50)+1;
 x(51:100) = 100-t(51:100);
 jk=fft(x)
 x1=jk(1:100);
 %x1=[jk(1),jk(10),jk(20),jk(30),jk(40),jk(50),jk(60),jk(70),jk(80),jk(90)]
 y=ifft(x1);
 
 stem(y);
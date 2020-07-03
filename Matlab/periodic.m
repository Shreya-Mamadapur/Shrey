%1. x1(n) = {...-2.-1.0,1,2..}. Plot 5 periods
x1 = [-2:2];
numberOfCycles = 5;
x = -12:12;
x1Periodic = repmat(x1,1,numberOfCycles);
stem(x,x1Periodic);
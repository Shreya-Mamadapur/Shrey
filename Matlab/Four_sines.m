%2.x3(n) = sin(0.1*pi*n)[u(n)-u(n-10)]. Plot 4 periods
numberOfCycles = 4;
n=[0:.1:9.9];
x3 = sin(0.1*pi*n);
x3Periodic = repmat(x3,1,numberOfCycles);
xaxis = [0:.1:39.9];
stem(xaxis, x3Periodic);
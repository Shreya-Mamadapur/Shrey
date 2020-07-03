%Que: x7(n) = e-0.05n sin(0.1*pi*n + pi/3); 0<= n <= 100
x7 = zeros(101);
x = 0:100;
for n = 0:100
x7(n+1) = exp(-0.05*n)*sin(0.1*pi*n + pi/3); 
% x7(n+1) because we want it to start with 1 and not 0.
end
stem(x,x7); title("Plot of x7(n) = e-0.05n sin(0.1*pi*n + pi/3)");

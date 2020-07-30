%y(n) = δ(n + 7) + 3δ(n − 2) − us(n − 3) (1) 	on the range −10 ≤ n ≤ 10

y=zeros(21); %initializing a vector to save the results
x=-10:10; %x-coordinates where the function need to be plotted
for n = -10:10 %loop to get result for each value in the defined range
        y(n+11) = delta(n+7) + 3*delta(n-2) + unitstep(n-3) ;%since in matlab, index starts from 1, y(n+11) is written to push the values to start from 1
end
stem(x,y); %using stem function
function del = delta(n) %defining a function for unit samples
    if(n==0)
        del =1;
    else
        del = 0;
    end
end

function step = unitstep(n) %defining a function for unitstep function
    if(n>=0)
        step =1;
    else
        step = 0;
    end
end
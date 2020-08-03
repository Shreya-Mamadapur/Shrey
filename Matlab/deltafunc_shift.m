startInput = -5
stopInput = 5
shiftInput = -2

unitStep(shiftInput,startInput,stopInput)


function vect = unitStep(shift, start, stop)
    if(start <0)
        c1 = shift + -1*start
    else
        c1 = start - shift
    end
    c2 = abs(shift - stop)
    
    x2 = zeros(1, c1)
    x3 = ones(1, c2+1)
    vect = [x2 x3]
end
    
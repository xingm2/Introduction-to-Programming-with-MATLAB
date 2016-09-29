function [fee] = fare(d,age) %d: miles
    if d <= 1
        base_fee = 2;
    elseif d <= 10
        base_fee = 2 + (round(d) - 1) * 0.25;
    else
        base_fee = 2 + 9*0.25 + (round(d) -10)*0.1;
    end
    
    if (age <= 18 || age >= 60)
        fee = 0.8 * base_fee;
    else
        fee = base_fee;
    end
   
end

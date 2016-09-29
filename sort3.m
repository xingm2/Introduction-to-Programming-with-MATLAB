function [a,b,c] = sort3(x)
    if x(1) < x(2)
        if x(1) < x(3)
            a = x(1);
            if x(2) < x(3)
                b = x(2);
                c = x(3);
            else
                b = x(3);
                c = x(2);
            end
        else
            a = x(3);
            b = x(1);
            c = x(2);
        end
    else
        if x(2) < x(3)
            a = x(2);
            if x(1) < x(3)
                b = x(1);
                c = x(3);
            else
                b = x(3);
                c = x(1);
            end
        else
            a = x(3);
            b = x(2);
            c = x(1);
        end
    end
end
function x = find_zero(f,x1,x2)
    xm = (x1+x2)/2;
    while abs(f(xm)) >= 1e-10
        xm = (x1+x2)/2;
        if f(xm) >= 1e-10
            if f(x1) > 0
                x1 = xm;
            else
                x2 = xm;
            end
        elseif f(xm) <= -1e-10
            if f(x1) > 0
                x2 = xm;
            else
                x1 = xm;
            end
        end
    end
    x = xm;
end

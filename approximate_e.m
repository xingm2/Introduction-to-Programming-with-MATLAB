function [e k] = approximate_e(delta)
    k = 0;
    e = 1;
    kbar = 1;
    while abs(e - exp(1)) > delta
        k = k + 1; 
        kbar = kbar * k; 
        e = e + 1/kbar;
    end
end

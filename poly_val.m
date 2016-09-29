function p = poly_val (c0,c,x)

    if size(c) == 0
        p = c0;
    elseif isscalar(c)
        p = c0 + c*x;
    else
        N = length(c);
        if isrow(c)   % check if it is a row
            pv = [1:N];
        else 
            pv = [1:N]';
        end
        pv1 = c .* (x .^ pv);
        p = c0 + sum(pv1);

end

function sds = spiral_diag_sum(n)
    %%sds = 0;
    %%if n = 1
    %%    sds = 1;
    %%else if n = 3
    %%    sds = 25;
    %%else
        sds = 1;
        for i = 1:2:n
            if i == 1
                continue;
            else
                sds = sds + (i^2) + (i^2 - 2*i + 2) + (i^2-i+1) + (i^2-3*i+3);
            end
        end
    %%end
end

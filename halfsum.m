function hs = halfsum(A)
    var = triu(flipud(A));  %%look up flipud and triu
    hs = sum(var(:));
end

%% ans:   h = sum(sum(triu(flipud(A))))

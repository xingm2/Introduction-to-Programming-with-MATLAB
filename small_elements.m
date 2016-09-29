function se = small_elements(X)
    se = [];
    %%for ii = 1:size(X,1)
    %%    for jj = 1:size(X,2)
    %%        if X(ii,jj) < (ii * jj)
    %%           se = [se ; [ii jj]];
    %%        end
    %%    end
    %%end

    for jj = 1:size(X,2)
        for ii = 1:size(X,1)
            if X(ii,jj) < (ii * jj)
               se = [se ; [ii jj]];
        end
    end
end

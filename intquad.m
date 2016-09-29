function [Q] = intquad (n,m)
    Q = zeros(2*n,2*m);
    Q(1:n,m+1:2*m) = ones(n,m);
    Q(n+1:2*n,1:m) = 2 * ones(n,m);
    Q(n+1:2*n,m+1:2*m) = 3 * ones(n,m);
end

% ans in solution is much better

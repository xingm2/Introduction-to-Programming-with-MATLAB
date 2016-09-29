function [percentage] = zero_stat (ZO)
    [a  b] = size(ZO);
    c = a * b;
    percentage = (c - sum(ZO(:))) / c * 100; 
end

%%%%%%%%%%%%%%%%%%%%%

    pct = 100 * (numel(A) - sum(A(:))) / numel(A);  % numel()  ,  get the number of elements in an arrary 

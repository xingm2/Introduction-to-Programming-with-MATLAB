function [PS] = peri_sum (A)
PS = sum(A (1,:))+sum(A (end,:))+sum(A (:,1))+sum(A (:,end))-A(1,1)-A(1,end)- A(end,1) - A(end,end);
end
% add up all 4 perimeters, then minus 4 corners.

function s = peri_sum(A)
    B = A(2:end-1,2:end-1);   % get the central core matrix
    s = sum(A(:)) - sum(B(:));  % use the whole to minus the core   % A(:) -> convert A to a vector.
end

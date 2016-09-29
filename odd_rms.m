function [orms] = odd_rms (nn)
    A = [1:2:2*nn];
    orms = sqrt(sum(A .* A) / length(A));  %(mean(A .^ 2)) 
end

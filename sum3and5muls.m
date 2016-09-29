function [s35] = sum3and5muls (n)
    s3 = [0:3:n];
    s5 = [0:5:n];
    s15 = [0:15:n];
    s35 = sum(s3) + sum(s5) - sum(s15);
end

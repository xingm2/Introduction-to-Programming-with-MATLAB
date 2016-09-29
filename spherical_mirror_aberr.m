function mbd = spherical_mirror_aberr(fn,D)
    x = [0:0.01:D/2];
    z = asin(x ./ (2 * fn * D));
    d = 2 * fn * D .* tan(2 .* z) .* (1 ./ cos(z) - 1);  % only the 2nd  multiy is necessary to be .*
    mbd = 8 * 0.01 / (D .^ 2) * sum(x .* d);   % only the 2nd  multiy is necessary to be .*
end

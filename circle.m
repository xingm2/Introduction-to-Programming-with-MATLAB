function [area, cf] = circle (r)
area = pi * r * r; % better: r .^ 2
cf = 2 * pi * r;
end

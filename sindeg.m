function [SG, A] = sindeg (deg)
    SG = sin(deg * pi / 180);
    A = sum(SG(:)) / length(SG(:));  % use mean(SG(:))
end

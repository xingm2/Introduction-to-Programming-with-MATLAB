function [min,mile] = light_speed (R)
speed = 300000;  %3e5
mile2km = 1.609;
min = R / speed / 60;
mile = R / mile2km;

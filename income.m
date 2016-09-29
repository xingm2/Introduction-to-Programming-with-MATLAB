function [OI] = income (rate , price)
OI = sum(rate * price') * 6 * 8 * 2;  % note price'

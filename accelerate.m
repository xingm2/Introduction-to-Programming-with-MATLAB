function amag = accelerate(F1,F2,m)
F = F1 + F2;
a = F/m;
amag = sqrt(a(1) * a(1) + a(2) * a(2) + a(3) * a(3))   % a .^ 2

function nm = day_counter(yr)
     %day_passed = yr
     a = 0;
     b = 0;
     c = 0;
     nm = 0;
     if yr == 1776
        days_passed = 0;
     else
         for i = 1776:(yr-1)
             if mod(i,400) == 0 && mod(i,100) == 0
                c = 1;
             elseif mod(i,4) == 0 && mod(i,100) ~= 0
                b = b + 1;
             else
                a = a + 1;
             end
         end
         days_passed = (c + b) * 366 + a * 365
     end

     if (mod(yr,400) == 0 && mod(yr,100) == 0) || (mod(yr,4) == 0 && mod(yr,100) ~= 0)
            d1_m = [days_passed, days_passed + 31, days_passed + 60, days_passed + 91, days_passed + 121, days_passed + 152, days_passed + 182, days_passed + 213, days_passed + 244, days_passed + 274, days_passed + 305, days_passed + 335, ];
     else
            d1_m = [days_passed, days_passed + 31, days_passed + 59, days_passed + 90, days_passed + 120, days_passed + 151, days_passed + 181, days_passed + 212, days_passed + 243, days_passed + 273, days_passed + 304, days_passed + 334, ];
     end

     for j = 1:size(d1_m,2)
        if (mod(d1_m(j),7) + 1) == 1
            nm = nm + 1;
        end
     end
end

% 1/1/1776 is a Mon

% what 1/1 is?

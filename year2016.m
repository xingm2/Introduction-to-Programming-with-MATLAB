function sd = year2016(mo)
    month_ptr = cell(12);
    month_ptr{1} = 'January';
    month_ptr{2} = 'February';
    month_ptr{3} = 'March';
    month_ptr{4} = 'April';
    month_ptr{5} = 'May';
    month_ptr{6} = 'June'; 
    month_ptr{7} = 'July';
    month_ptr{8} = 'August'; 
    month_ptr{9} = 'September'; 
    month_ptr{10} = 'October';
    month_ptr{11} = 'November'; 
    month_ptr{12} = 'December';
    %%month_str = ['January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December'];
    day_ptr = cell(7);
    day_ptr{1} = 'Thu';
    day_ptr{2} = 'Fri';
    day_ptr{3} = 'Sat';
    day_ptr{4} = 'Sun';
    day_ptr{5} = 'Mon';
    day_ptr{6} = 'Tue';
    day_ptr{7} = 'Wed';
    %%day_str   = ['Thu' 'Fri' 'Sat' 'Sun' 'Mon' 'Tue' 'Wen'];
    num_of_days = [31 29 31 30 31 30 31 31 30 31 30 31];
    sd = [];
    %%if (isinteger(mo) && mo >= 1 && mo <= 12)
    if (isscalar(mo) && mo == floor(mo) && mo >= 1 && mo <= 12)
        if mo == 1
            all_pass_day = 0;
        else
            all_pass_day = sum(num_of_days(1:mo-1));
        end
        for i = 1:num_of_days(mo)
            day_built.month = month_ptr{mo};
            day_built.date  = i;
            day_built.day   = day_ptr{ mod(all_pass_day+i,7) + 1};
            sd = [sd day_built];
        end
    else
        sd = [];
    end
end

%%day.month = 'mo'
%%day.date  = position
%%day.day   = caculate  

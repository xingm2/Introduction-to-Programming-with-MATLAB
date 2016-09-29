function [d] = day_diff(month1,day1,month2,day2)
    n_correct_types = 0;
    n_valid_m = 0;
    n_valid_d1 = 0;
    n_valid_d2 = 0;
    bm = [1 3 5 7 8 10 12];  %big month
    sm = [4 6 9 11];         %small month
    
    n_correct_types = ~isscalar(month1) || ~isscalar(day1) || ~isscalar(month2) || ~isscalar(day2) ...
    || ceil(month1) ~= floor(month1) || ceil(day1) ~= floor(day1) || ceil(month2) ~= floor(month2) || ceil(day2) ~= floor(day2);  % ceil(day1) == floor(day1) make sure that day1 is a integer value (not checking if this a integer type)

    if n_correct_types
        d = -1;
        return
    end

    n_valid_m = month1 > 12 || month1 < 1 || month2 > 12 || month2 < 1;
    
    if n_valid_m
        d = -1;
        return
    end

    if day1 <= 0 || day2 <= 0
       d = -1;
       return
    end
    
    if ismember(month1,bm)
        n_valid_d1 = day1 > 31;
    elseif ismember(month1,sm)
        n_valid_d1 = day1 > 30;
    else
        n_valid_d1 = day1 > 28;
    end
    
    if ismember(month2,bm)
        n_valid_d2 = day2 > 31;
    elseif ismember(month2,sm)
        n_valid_d2 = day2 > 30;
    else
        n_valid_d2 = day2 > 28;
    end
    
    if n_correct_types || n_valid_m || n_valid_d1 || n_valid_d2
        d = -1;
        return
    end
    
    switch month1
        case 1
            base = 0;
        case 2
            base = 31;
        case 3
            base = 59;
        case 4
            base = 90;
        case 5
            base = 120;
        case 6
            base = 151;
        case 7
            base = 181;
        case 8
            base = 212;
        case 9
            base = 243;
        case 10
            base = 273;
        case 11
            base = 304;
        case 12
            base = 334;
    end 

    switch month2
        case 1
            base2 = 0;
        case 2
            base2 = 31;
        case 3
            base2 = 59;
        case 4
            base2 = 90;
        case 5
            base2 = 120;
        case 6
            base2 = 151;
        case 7
            base2 = 181;
        case 8
            base2 = 212;
        case 9
            base2 = 243;
        case 10
            base2 = 273;
        case 11
            base2 = 304;
        case 12
            base2 = 334;
   end

   boy1 = base + day1;
   boy2 = base2 + day2;

   d = abs(boy1-boy2);

        
end
% just refer to ans for this one anyway, that is a good solution

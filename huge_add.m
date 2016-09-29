function str = huge_add(int1, int2)
    if ~is_good(int1) || ~is_good(int2)
        str = -1;
        return;
    else
        %str = num2str(str2num(int1) + str2num(int2));

        int1l = length(int1);
        int2l = length(int2);
        str = '';
        if length(int1) >= length(int2)
            carry = 0;
            for i = length(int2):-1:1
                str = [num2str(mod(str2num(int1(i+length(int1)-length(int2))) + str2num(int2(i)) + carry,10)) str];
                if (str2num(int1(i+length(int1)-length(int2))) + str2num(int2(i)) + carry) > 9
                    carry = 1;
                else 
                    carry = 0;
                end
            end
            for i = length(int1)-length(int2):-1:1
                str = [num2str(mod(str2num(int1(i))+carry,10)) str];
                if (str2num(int1(i))+carry) > 9
                    carry = 1;
                else
                    carry = 0;
                end
            end
            %str2num(int1(length(int1)-length(int2))) + carry
            %more = int1(1:length(int1)-length(int2))
            %final_more = num2str(str2num(more) + carry
        else
            carry = 0;
            for i = length(int1):-1:1
                str = [num2str(mod(str2num(int2(i+length(int2)-length(int1))) + str2num(int1(i)) + carry,10)) str];
                if (str2num(int2(i+length(int2)-length(int1))) + str2num(int1(i)) + carry) > 9
                    carry = 1;
                else 
                    carry = 0;
                end
            end
            for i = length(int2)-length(int1):-1:1
                str = [num2str(mod(str2num(int2(i))+carry,10)) str];
                if (str2num(int2(i))+carry) > 9
                    carry = 1;
                else
                    carry = 0;
                end
            end
        end
    end
end

function good = is_good(intx)
    good = 1;
    if ~isstr(intx)
        good = 0;
    end   
    for i = 1:size(intx,2)
        if intx(i) < 48 || intx(i) > 57
            good = 0;
            break;
        end
    end
end

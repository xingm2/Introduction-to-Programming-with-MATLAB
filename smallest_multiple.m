function sm = smallest_multiple(n)
    sm = uint64(0);
    pl = [];  %prime number list
    for i = 1:n
        if length(factor(i)) == 1
            pl = [pl i];
        elseif range(factor(i)) == 0
            factor_vec = factor(i);
            if ismember(factor_vec(1),pl)
                pl = [pl factor_vec(1)];
            end
        end
    end
    %sm = uint64(prod(uint64(pl),2));
    %if sm +1 == intmax('uint64')
    %    sm = uint64(0);
    %end
    if prod(uint64(pl),'native') == intmax('uint64')
        sm = uint64(0);
    else
        sm = prod(uint64(pl),'native');
    end
end

%prod(A,2);
%%%%%
%   no_way = 1;
%   while no_way
%       sm = sm + 1;
%       for i = 1:n
%         if mod(sm,i) == 0
%           no_way = 0;
%           continue;
%         else
%           no_way = 1; 
%           break
%         end
%       end
%   end
%
%   if sm > intmax('uint64')
%       sm = 0;
%   end
%%%%%

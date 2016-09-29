function ssic = integerize(A)
    bg = max(A(:));
    sm = min(A(:));
    if (bg <= 2^7-1 && sm >= -(2^7))
        ssic = 'int8';
    elseif (bg <= 2^15-1 && sm >= -(2^15))
        ssic = 'int16';
    elseif (bg <= 2^31-1 && sm >= -(2^31))
        ssic = 'int32';
    elseif (bg <= 2^63-1 && sm >= -(2^63))
        ssic = 'int64';
    else 
        ssic = 'NONE';
    end
end

%function cl = integerize(A)
%    cls = {'int8'; 'int16'; 'int32'; 'int64'}; // create a pointer pointing to a set of char vectors
%    cl = 'NONE';
%    mx = max(A(:));
%    mn = min(A(:));
%    for ii = 1:length(cls)
%        if intmax(cls{ii}) >= mx && intmin(cls{ii}) <= mn //intmax and intmin
%            cl = cls{ii};
%            break;
%        end
%    end
%end

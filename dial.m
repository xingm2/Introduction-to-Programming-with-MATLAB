function output = dial(input)
cast_number = [];
bad_in = 0;
[ no_use, in_size] = size(input);
for i = 1:in_size
    if seek(input(i)) == 'X'
        bad_in = 1;
        break;
    end
    cast_number = [cast_number seek(input(i))];
end

if bad_in 
    output = uint64(0);
else
    output = uint64(str2num(cast_number));
end
end

function str_number = seek(i)
lu_ptr = cell(10);

lu_ptr{1} = '1';
lu_ptr{2} = '2ABC';
lu_ptr{3} = '3DEF';
lu_ptr{4} = '4GHI';
lu_ptr{5} = '5JKL';
lu_ptr{6} = '6MNO';
lu_ptr{7} = '7PQRS';
lu_ptr{8} = '8TUV';
lu_ptr{9} = '9WXYZ';
lu_ptr{10} = '0';

str_number = '';
    switch 1
        case strfind(lu_ptr{10},i) > 0
            str_number = '0';
        case strfind(lu_ptr{1},i) > 0
            str_number = '1';
        case strfind(lu_ptr{2},i) > 0
            str_number = '2';
        case strfind(lu_ptr{3},i) > 0 
            str_number = '3';
        case strfind(lu_ptr{4},i) > 0
            str_number = '4';
        case strfind(lu_ptr{5},i) > 0 
            str_number = '5';
        case strfind(lu_ptr{6},i) > 0
            str_number = '6';
        case strfind(lu_ptr{7},i) > 0
            str_number = '7';
        case strfind(lu_ptr{8},i) > 0
            str_number = '8';
        case strfind(lu_ptr{9},i) > 0
            str_number = '9';
        otherwise
            str_number = 'X';
    end
end

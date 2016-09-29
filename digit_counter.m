function nd = digit_counter(txt_file)
%fid = -1;
fid = fopen(txt_file, 'rt');
if fid <0
    nd = -1;
    return;
    %error('error!!!');
end

nd = 0;

oneline = fgets(fid);
    %%fprintf('%s',oneline);
while ischar(oneline)
    fprintf('%s',oneline);
    for i = 1:size(oneline,2)
        sprintf('%s',oneline(i));
        %if (oneline(i) >= 48 && oneline(i) <= 57) || (oneline(i) >= 65 && oneline(i) <= 90) || (oneline(i) >= 97 && oneline(i) <= 122)
        if (oneline(i) >= 48 && oneline(i) <= 57)
            nd = nd + 1;
        end
    end
    oneline = fgets(fid);
    %%fprintf('%s',oneline);
end

end

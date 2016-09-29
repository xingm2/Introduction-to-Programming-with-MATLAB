function w = move_me(v,a)
    if (nargin < 2)   %% built-in functions
       z =v(v == 0);  %% logical indexing
       v =v(v ~= 0);
       w = [v,z];
    else
       z =v(v == a);
       v =v(v ~= a);
       w = [v,z];
    end
end

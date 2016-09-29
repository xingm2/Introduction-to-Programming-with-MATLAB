function [S] = simple_stats(N)
   %for i = 1:length(N(:,1))
       %S(i,1) = mean(N(i,:));
       %S(i,2) = median(N(i,:));
       %S(i,3) = min(N(i,:));
       %S(i,4) = max(N(i,:));
   %end
   S(:,1) = (mean(N'))';
   S(:,2) = (median(N'))';
   S(:,3) = (min(N'))';
   S(:,4) = (max(N'))';
end

function y = decasteljau_subdiv(X,Y)
n = length(X) - 1;
l1 = [X(1);Y(1)];
l2 = [X(end);Y(end)];

for i = n:-1:1
   for j = 1:i
      X(j) = 0.5*X(j+1) + 0.5*X(j);
      
      Y(j) = 0.5*Y(j+1) + 0.5*Y(j);
   end
   l1 = [l1, [X(1);Y(1)]];
   l2 = [[X(i);Y(i)],l2];
end

l1 = l1(:,1:(end-1));

y = [l1,l2];
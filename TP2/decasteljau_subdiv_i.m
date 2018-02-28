function y = decasteljau_subdiv_i(X,Y,ind)
n = length(X) - 1;
l1 = [X(1);Y(1)];
l2 = [X(end);Y(end)];

if (ind == 1)
    y = decasteljau_subdiv(X,Y);
else
        
    for i = n:-1:1
       for j = 1:i
          X(j) = 0.5*X(j+1) + 0.5*X(j);

          Y(j) = 0.5*Y(j+1) + 0.5*Y(j);
       end
       l1 = [l1, [X(1);Y(1)]];
       l2 = [[X(i);Y(i)],l2];
    end
    
    y = [decasteljau_subdiv_i(l1(1,:),l1(2,:),ind-1), decasteljau_subdiv_i(l2(1,:),l2(2,:),ind-1)];


end
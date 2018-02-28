function y = decasteljau(t,X,Y)
% Algorithme de De Casteljau
n = length(X) - 1;
for i = n:-1:1
   for j = 1:i
      X(j) = (1-t)*X(j+1) + t*X(j);
      
      Y(j) = (1-t)*Y(j+1) + t*Y(j);
   end
end

y = [X(1), Y(1)];
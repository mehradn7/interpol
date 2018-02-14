function y = neville(t,T,X,Y)
% Algorithme de Neville
n = length(X) - 1;
for i = n:-1:1
   for j = 1:i
      X(j) = (t-T(j))*X(j+1) - (t-T(j+n+1-i))*X(j);
      X(j) = X(j)/(T(j+n+1-i)-T(j));
      
      Y(j) = (t-T(j))*Y(j+1) - (t-T(j+n+1-i))*Y(j);
      Y(j) = Y(j)/(T(j+n+1-i)-T(j));
   end
end

y = [X(1), Y(1)];
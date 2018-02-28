function [ y ] = bernstein(t,k,n)
% Polynôme de la base Bernstein d'indices k,n calculé en t
y = nchoosek(n,k)*(t^k)*(1-t)^(n-k);



end


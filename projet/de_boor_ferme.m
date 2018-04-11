function y = de_boor_ferme(X,Y,T,t,k)

j = k+1;
while j<=length(T)-2 && ~((t >= T(j)) && (t < T(j+1)))
    j = j+1;
end
j
n=length(X);


for p=0:k
    Dx(p+1)=X(mod(p+j-k-1,n)+1);
    Dy(p+1)=Y(mod(p+j-k-1,n)+1);
end
Dx

for r = 1:k
   for i = k:-1:r
      alpha = (t - T(j+i-k))/(T(i+j-r+1) - T(i+j-k));

      Dx(i+1) = (1.0 - alpha) * Dx(i) + alpha * Dx(i+1);
      Dy(i+1) = (1.0 - alpha) * Dy(i) + alpha * Dy(i+1);
   end
end

y = [Dx(k+1); Dy(k+1)];

end
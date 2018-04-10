function y = de_boor(X,Y,T,t,k)

j = 1;
while j<=length(X)-1 && ~((t >= T(j)) && (t < T(j+1)))
    j = j+1;
end



for p=0:k
    Dx(p+1)=X(p+j-k);
    Dy(p+1)=Y(p+j-k);
end

for r = 1:k
   for i = k:-1:r
      alpha = (t - T(j+i-k)) /(T(i+1+j-r) - T(i+j-k));

      Dx(i+1) = (1.0 - alpha) * Dx(i) + alpha * Dx(i+1);
      Dy(i+1) = (1.0 - alpha) * Dy(i) + alpha * Dy(i+1);
   end
end

y = [Dx(k+1); Dy(k+1)];

end
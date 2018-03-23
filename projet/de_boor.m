function y = de_boor(X,Y,T,t,k)

for j=1:length(T)-1
    if (t>= T(j)) && (t < T(j+1))
        break
    end
end
j

for p=1:k
    Dx(p)=X(j-p+1);
    Dy(p)=Y(j-p+1);
end

for r = 1:k
   for i = k:-1:r-1
      alpha = (t - T(j+i-k)) /(T(i+1+j-r) - T(i+j-k));
      Dx(i) = (1.0 - alpha) * Dx(i) + alpha * Dx(i+1);
      Dy(i) = (1.0 - alpha) * Dy(i) + alpha * Dy(i+1);
   end
end

y = [Dx(1); Dy(1)];

end
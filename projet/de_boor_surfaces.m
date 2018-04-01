function y = de_boor_surfaces(X,Y,Z,T1,T2,u,v,k,l)
[m, n] = size(X);
c = 1;
while c<=m-1 && ~((u >= T1(c)) && (u < T1(c+1)))
    c = c+1;
end

d = 1;
while d<=n-1 && ~((v >= T2(d)) && (v < T2(d+1)))
    d = d+1;
end



for i = c-l:c
    for p=0:k
        Dx(p+1)=X(i,d-p);
        Dy(p+1)=Y(i,d-p);
        Dz(p+1)=Z(i,d-p);
    end
    y = de_boor_3D(Dx,Dy,Dz,T1,u,k);
    Qx(i) = y(1);
    Qy(i) = y(2);
    Qz(i) = y(3);
end
% Qx
% Qy
% Qz
% T1
y = de_boor_3D(Qx(c-l:c),Qy(c-l:c),Qz(c-l:c),T2,v,l);

end
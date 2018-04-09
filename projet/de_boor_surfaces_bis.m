function y = de_boor_surfaces_bis(X,Y,Z,T1,T2,k,l)



y = de_boor_3D(X,Y,Z,T1,u,k);
X_res = y(1);
Y_res = y(2);
Z_res = y(2);

y = de_boor_3D(X_res,Y_res,Z_res,T2,v,l);


end
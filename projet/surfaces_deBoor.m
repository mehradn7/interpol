%% SURFACES de Boor - PROJET PARTIE 2
k = 4;
l = 4;

pas = 0.05;% pas d'échantillonage



Grille = tore();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);

[m, n] = size(X);

p1 = m + k;
p2 = n + l;

noeuds1 = [zeros(1,k) 0:p1-2*k (p1-2*k)*ones(1,k)];
I1 =  0:pas:p1-2*k;

noeuds2 = [zeros(1,l) 0:p2-2*l (p2-2*l)*ones(1,l)];
I2 =  0:pas:p2-2*l;

[ X_res ] = applique_deBoor( X, k, noeuds1, I1);
[ Y_res ] = applique_deBoor( Y, k, noeuds1, I1);
[ Z_res ] = applique_deBoor( Z, k, noeuds1, I1);

[ X_res2 ] = applique_deBoor( X_res', l, noeuds2, I2);
[ Y_res2 ] = applique_deBoor( Y_res', l, noeuds2, I2);
[ Z_res2 ] = applique_deBoor( Z_res', l, noeuds2, I2);



figure(2)
surf(X_res2',Y_res2',Z_res2');

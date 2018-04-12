%% SURFACES de Boor - PROJET PARTIE 2
k = 3;
l = 3;

pas = 0.1;% pas d'échantillonage



Grille = tore();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);

[m, n] = size(X);

p1 = m + 3*k +2;
p2 = n + 3*l +2;

noeuds1 = [zeros(1,k) 0:p1-2*k (p1-2*k)*ones(1,k)];
I1 =  k-1:pas:p1-2*k-(k-1);

noeuds2 = [zeros(1,l) 0:p2-2*l (p2-2*l)*ones(1,l)];
I2 =  l-1:pas:p2-2*l-(l-1);
[ X_res ] = applique_deBoor_ferme( X, k, noeuds1, I1);
[ Y_res ] = applique_deBoor_ferme( Y, k, noeuds1, I1);
[ Z_res ] = applique_deBoor_ferme( Z, k, noeuds1, I1);

[ X_res2 ] = applique_deBoor_ferme( X_res', l, noeuds2, I2);
[ Y_res2 ] = applique_deBoor_ferme( Y_res', l, noeuds2, I2);
[ Z_res2 ] = applique_deBoor_ferme( Z_res', l, noeuds2, I2);



figure(13)
surf(X_res2',Y_res2',Z_res2');

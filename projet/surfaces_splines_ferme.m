%% SURFACES SPLINES - PROJET PARTIE 1
degre = 4;
nb_iter = 2;


Grille = tore();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);
figure(14)
surf(X_res2',Y_res2',Z_res2');

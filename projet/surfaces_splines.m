%% SURFACES SPLINES - PROJET PARTIE 1
degre = 3;
nb_iter = 2;


Grille = grille();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);


[ X_res ] = applique_subdivision( X, degre, nb_iter);
[ Y_res ] = applique_subdivision( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision( Z_res', degre, nb_iter);

figure(2)
surf(X_res2',Y_res2',Z_res2');

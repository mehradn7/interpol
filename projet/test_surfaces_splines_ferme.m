%% SURFACES SPLINES - PROJET PARTIE 1



Grille = tore();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);

%% test1
degre = 0;
nb_iter = 2;

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);

subplot(2,3,1)
surf(X_res2',Y_res2',Z_res2');
title(['degre = ', num2str(degre), ', nb\_iter = ', num2str(nb_iter)]);

%% test2
degre = 1;
nb_iter = 2;

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);

subplot(2,3,2)
surf(X_res2',Y_res2',Z_res2');
title(['degre = ', num2str(degre), ', nb\_iter = ', num2str(nb_iter)]);


%% test3
degre = 2;
nb_iter = 2;

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);

subplot(2,3,3)
surf(X_res2',Y_res2',Z_res2');
title(['degre = ', num2str(degre), ', nb\_iter = ', num2str(nb_iter)]);


%% test4
degre = 2;
nb_iter = 1;

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);

subplot(2,3,4)
surf(X_res2',Y_res2',Z_res2');
title(['degre = ', num2str(degre), ', nb\_iter = ', num2str(nb_iter)]);


%% test5
degre = 2;
nb_iter = 2;

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);

subplot(2,3,5)
surf(X_res2',Y_res2',Z_res2');
title(['degre = ', num2str(degre), ', nb\_iter = ', num2str(nb_iter)]);


%% test6
degre = 2;
nb_iter = 3;

[ X_res ] = applique_subdivision_ferme( X, degre, nb_iter);
[ Y_res ] = applique_subdivision_ferme( Y, degre, nb_iter);
[ Z_res ] = applique_subdivision_ferme( Z, degre, nb_iter);

[ X_res2 ] = applique_subdivision_ferme( X_res', degre, nb_iter);
[ Y_res2 ] = applique_subdivision_ferme( Y_res', degre, nb_iter);
[ Z_res2 ] = applique_subdivision_ferme( Z_res', degre, nb_iter);

subplot(2,3,6)
surf(X_res2',Y_res2',Z_res2');
title(['degre = ', num2str(degre), ', nb\_iter = ', num2str(nb_iter)]);


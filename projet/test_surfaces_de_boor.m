%% SURFACES SPLINES - PROJET PARTIE 1

pas = 0.1;

Grille = grille();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);

[m, n] = size(X);


%% test1
k = 0;
l = 2;

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

subplot(2,4,1)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ',l = ', num2str(l)]);

%% test2
k = 1;
l = 2;

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

subplot(2,4,2)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);


%% test3
k = 2;
l = 2;

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

subplot(2,4,3)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);

%% test4
k = 3;
l = 2;

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

subplot(2,4,4)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);


%% test5
k = 2;
l = 0;

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

subplot(2,4,5)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);


%% test6
k = 2;
l = 1;

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

subplot(2,4,6)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);


%% test7
k = 2;
l = 2;

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

subplot(2,4,7)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);

%% test8
k = 2;
l = 3;

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

subplot(2,4,8)
surf(X_res2',Y_res2',Z_res2');
title(['k = ', num2str(k), ', l = ', num2str(l)]);


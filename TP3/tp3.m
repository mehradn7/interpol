%% TP n°3 - Splines
[X,Y] = saisi_points();

%% Courbes fermées
degre = 3; % degré des splines

[X_spline, Y_spline] = subdivise_ferme(1, degre, X,Y);
plot([X,X(1)],[Y,Y(1)]);
plot(X_spline, Y_spline, 'x-');

%% Courbes ouvertes
[X_spline, Y_spline] = subdivise_ouvert(1, degre, X,Y);

plot(X_spline, Y_spline);


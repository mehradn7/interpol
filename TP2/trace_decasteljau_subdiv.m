%% TP n° 2 

%% Ex.3 - Tracé de Casteljau subdivision

liste_points = decasteljau_subdiv(X,Y);
subplot(2,3,3)

hold on;
title('De Casteljau subdivision')
plot(X,Y);
plot(liste_points(1,:), liste_points(2,:));





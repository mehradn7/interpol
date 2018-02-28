%% TP n° 2 

%% Ex.3 - Tracé de Casteljau subdivision
pas = 0.01;
T = 0:pas:1;


[X,Y] = saisi_points();
X_affiche = zeros(1,length(T));
Y_affiche = zeros(1,length(T));

% for k=1:length(T)
%     y = decasteljau(T(k),X,Y);
%     X_affiche(k) = y(1);
%     Y_affiche(k) = y(2);
% end

liste_points = decasteljau_subdiv(X,Y);

hold on;
plot(X,Y);
plot(liste_points(1,:), liste_points(2,:));





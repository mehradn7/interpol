%% TP n° 2 

%% Ex.2 - Tracé de Casteljau évaluation
pas = 0.01;
T = 0:pas:1;


[X,Y] = saisi_points();
X_affiche = zeros(1,length(T));
Y_affiche = zeros(1,length(T));

for k=1:length(T)
    y = decasteljau(T(k),X,Y);
    X_affiche(k) = y(1);
    Y_affiche(k) = y(2);
end

hold on;
plot(X,Y);
plot(X_affiche,Y_affiche);

%% degré élevé : la courbe ne suit pas très précisément le polynome de controle (voir screenshots)
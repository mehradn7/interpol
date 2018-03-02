%% TP n° 2 

%% Ex.2 - Tracé de Casteljau évaluation

X_affiche_hodo = zeros(1,length(T));
Y_affiche_hodo = zeros(1,length(T));

X_hodo = X(2:end) - X(1:end-1);
Y_hodo = Y(2:end) - Y(1:end-1);

for k=1:length(T)
    y = decasteljau(T(k),X_hodo,Y_hodo);
    X_affiche_hodo(k) = y(1);
    Y_affiche_hodo(k) = y(2);
end

subplot(2,3,5)
hold on;
title('Hodographe')
plot(X_hodo,Y_hodo);
plot(X_affiche_hodo,Y_affiche_hodo);


%% Script de test de l'interpolation fonctionnelle

%% Récupérer les points saisis par l'utilisateur 
[X,Y] = saisi_points();
n = length(X);
pas = 0.01;% pas d'échantillonage


%% Calculer les points à afficher
x_min = min(X);
x_max = max(X);
y_min = min(Y);
y_max = max(Y);

A = x_min:pas:(x_max+pas); % pour être sûr d'arriver jusqu'au dernier point
O = zeros(1,length(A));
somme = 0;

for i=1:length(A)
    for j=1:n
        somme = somme + Y(j)*Li(j,A(i),X);
    end
    O(i) = somme;
    somme = 0;
end

hold on
plot(A,O);
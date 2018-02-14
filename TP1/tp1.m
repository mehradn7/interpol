%% TP 1 Interpolation Polynomiale
pas = 0.05;% pas d'échantillonage

%% Cas fonctionnel
% récupérer les points saisis par l'utilisateur 
[X,Y] = saisi_points();

% x_min = min(X);
% x_max = max(X);
% y_min = min(Y);
% y_max = max(Y);
% 
% A = x_min:pas:x_max;
% O = zeros(1,length(A));
% somme = 0;
% 
% for i=1:(length(A))
%     for j=1:(length(X))
%         somme = somme + Y(j)*Li(j,A(i),X);
%     end
%     O(i) = somme;
%     somme = 0;
% end
% 
% hold on
% plot(A,O);


%% Cas paramétrique
%% Temps : ti = i
T2 = 1:length(X);
%% Temps : distance entre les points
T = ones(1,length(X));
for i=2:length(T)
    T(i) = T(i-1) + sqrt((X(i)-X(i-1))^2 + (Y(i)-Y(i-1))^2);
end
%% Temps : racine de la distance entre les points
T3 = ones(1,length(X));
for i=2:length(T3)
    T3(i) = T3(i-1) + sqrt(sqrt((X(i)-X(i-1))^2 + (Y(i)-Y(i-1))^2));
end
%% Temps : abscisses de Tchebytchev
T4 = fliplr(cos(pi*(2*(0:length(X)-1) + 1) / (2*length(X) + 2)));
T4 = (T4*(length(T4) - 1) + (length(T4) + 1)) / 2;

%% Calcul des points à afficher
A2 = 1:pas:length(X);
X2 = zeros(1,length(A2));
somme = 0;

for i=1:(length(A2))
    for j=1:(length(T4))
        somme = somme +X(j)*Li(j,A2(i),T4);
    end
    X2(i) = somme;
    somme = 0;
end

B2 = 1:pas:length(Y);
Y2 = zeros(1,length(B2));
somme = 0;

for i=1:(length(B2))
    for j=1:(length(T4))
        somme = somme +Y(j)*Li(j,B2(i),T4);
    end
    Y2(i) = somme;
    somme = 0;
end

%% Affichage
hold on
plot(X2,Y2);

%% Neville
% on affiche un point interpolé avec l'algorithme de Neville
Pnev = neville(T4(1),T4,X,Y);
plot(Pnev(1),Pnev(2), 'o');

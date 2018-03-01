function [X2,Y2] = trace_interpolation(T,n, X, Y)
%% TP 1 Interpolation Polynomiale
% Paramètres : T : la paramétrisation temporelle choisie
% n : nombre de points choisis par l'utilisateur
% X, Y : abscisses et ordonnées des points

%% Constantes
pas = 0.01;% pas d'échantillonage



%% Calcul des points à afficher
A2 = 1:pas:n;
X2 = zeros(1,length(A2));

somme = 0;

for i=1:(length(A2))
    for j=1:n
        somme = somme +X(j)*Li(j,A2(i),T);
    end
    X2(i) = somme;
    somme = 0;
end

B2 = 1:pas:n;
Y2 = zeros(1,length(B2));

somme = 0;

for i=1:(length(B2))
    for j=1:n
        somme = somme +Y(j)*Li(j,B2(i),T);

    end
    Y2(i) = somme;
    somme = 0;
end

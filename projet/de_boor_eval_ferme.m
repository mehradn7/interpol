pas = 0.001;% pas d'échantillonage
k = 3;

% récupérer les points saisis par l'utilisateur 
[X,Y] = saisi_points();
X_ferme = [X(end-k:end) X X(1:k)];
Y_ferme = [Y(end-k:end) Y Y(1:k)];

n = length(X_ferme)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
% noeuds = [0 0 0 1 2 2 2];

I =  k-1:pas:m-2*k-2;
X2 = zeros(1,length(I));
Y2 = zeros(1,length(I));    

% de Boor évaluation
for i=1:length(I)
    y = de_boor(X_ferme,Y_ferme,noeuds,I(i),k);
    X2(i) = y(1);
    Y2(i) = y(2);
end

figure(1)
title('De Boor par évaluation');
hold on
plot([X X(1)],[Y Y(1)]);
plot(X2,Y2);
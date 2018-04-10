pas = 0.001;% pas d'échantillonage


% récupérer les points saisis par l'utilisateur 
[X,Y] = saisi_points();

k = 4;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 0.2*ones(1,m-2*k-1) (m-2*k)*ones(1,k+1)];
% noeuds = [0 0 0 1 2 2 2];

I =  0:pas:m-2*k;
X2 = zeros(1,length(I));
Y2 = zeros(1,length(I));    

% de Boor évaluation
for i=1:length(I)
    y = de_boor(X,Y,noeuds,I(i),k);
    X2(i) = y(1);
    Y2(i) = y(2);
end

figure(1)
title('De Boor par évaluation');
hold on
plot(X,Y);
plot(X2,Y2);
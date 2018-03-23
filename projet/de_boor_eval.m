pas = 0.001;% pas d'échantillonage


% récupérer les points saisis par l'utilisateur 
[X,Y] = saisi_points();

k = 2;
noeuds = [1, 1,1:length(X)];
I =  1:pas:length(X)+k;
X2 = zeros(1,length(I));
Y2 = zeros(1,length(I));

% deCasteljau évaluation
for i=1:length(I)
    y = de_boor(X,Y,noeuds,I(i),k);
    X2(k) = y(1);
    Y2(k) = y(2);
end

figure(1)
title('De Boor par évaluation');
hold on
plot(X,Y);
plot(X2,Y2);
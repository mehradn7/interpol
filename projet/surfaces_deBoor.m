%% SURFACES de Boor - PROJET PARTIE 2
k = 3;
l = 3;

pas = 0.1;% pas d'échantillonage


Grille = grille();
X = Grille(:,:,1);
Y = Grille(:,:,2);
Z = Grille(:,:,3);

[m, n] = size(X);

p1 = m + k + 1;
p2 = n + l + 1;

noeuds1 = [zeros(1,k) 0:p1-2*k (p1-2*k)*ones(1,k)];
I1 =  0:pas:p1-2*k;

noeuds2 = [zeros(1,l) 0:p2-2*l (p2-2*l)*ones(1,l)];
I2 =  0:pas:p2-2*l;

X_res = zeros(length(I1),length(I2));
Y_res = zeros(length(I1),length(I2));
Z_res = zeros(length(I1),length(I2));

for u=1:length(I1)
    for v=1:length(I2)
        y = de_boor_surfaces(X,Y,Z,noeuds1,noeuds2,u,v,k,l);
        X_res(u,v)=y(1);
        Y_res(u,v)=y(2);
        Z_res(u,v)=y(3);
    end
end

figure(2)
surf(X_res',Y_res',Z_res');

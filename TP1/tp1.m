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
T = 1:length(X);
A2 = 1:pas:length(X);
X2 = zeros(1,length(A2));
somme = 0;

for i=1:(length(A2))
    for j=1:(length(T))
        somme = somme +X(j)*Li(j,A2(i),T);
    end
    X2(i) = somme;
    somme = 0;
end

B2 = 1:pas:length(Y);
Y2 = zeros(1,length(B2));
somme = 0;

for i=1:(length(B2))
    for j=1:(length(T))
        somme = somme +Y(j)*Li(j,B2(i),T);
    end
    Y2(i) = somme;
    somme = 0;
end

hold on
plot(X2,Y2);
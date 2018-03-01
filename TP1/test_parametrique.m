%% Script de test de l'interpolation paramétrique

%% Récupérer les points saisis par l'utilisateur 
[X,Y] = saisi_points();
n = length(X);

%% Temps : T(i) = i
T = 1:n;
[X2,Y2] = trace_interpolation(T,n, X, Y);
subplot(2,2,1)
plot(X2,Y2);
hold on
plot(X,Y,'+');
axis([0 1 0 1])
title('T(i) = i')
%% Temps : distance entre les points
T2 = ones(1,n);
for i=2:n
    T2(i) = T2(i-1) + sqrt((X(i)-X(i-1))^2 + (Y(i)-Y(i-1))^2);
end
[X2,Y2] = trace_interpolation(T2,n, X, Y);
subplot(2,2,2)
plot(X2,Y2);
hold on
plot(X,Y, '+');
axis([0 1 0 1])
title('Distance')
%% Temps : racine de la distance entre les points
T3 = ones(1,n);
for i=2:n
    T3(i) = T3(i-1) + sqrt(sqrt((X(i)-X(i-1))^2 + (Y(i)-Y(i-1))^2));
end
[X2,Y2] = trace_interpolation(T3,n, X, Y);
subplot(2,2,3)
plot(X2,Y2);
hold on
plot(X,Y,'+');
axis([0 1 0 1])
title('Racine de la distance')
%% Temps : abscisses de Tchebytchev
T4 = fliplr(cos(pi*(2*(0:n-1) + 1) / (2*n + 2)));
T4 = (T4*(n - 1) + (n + 1)) / 2;
[X2,Y2] = trace_interpolation(T4,n, X, Y);
subplot(2,2,4)
plot(X2,Y2);
hold on
plot(X,Y,'+');
axis([0 1 0 1])
title('Abscisses de Tchebychev')

%% Interpolation avec Neville
hold on

%% Neville
% on affiche un point interpolé avec l'algorithme de Neville
Pnev = neville(T4(1),T4,X,Y);
plot(Pnev(1),Pnev(2), 'o');

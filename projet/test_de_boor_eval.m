pas = 0.001;% pas d'échantillonage


% récupérer les points saisis par l'utilisateur
%[X,Y] = saisi_points();

% X = [0.2 0.4 0.6 0.8 1];
% Y = [0.2 0.6 0.3 0.6 0.2];

% X = [0.2 0.4 0.6 0.8 1];
% Y = [0.2 0.4 0.3 0.6 0.2];

%% test1
X = [0.2 0.4 0.6 0.8 1];
Y = [0.2 0.6 0.3 0.6 0.2];

k = 1;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,1)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test2
X = [0.2 0.4 0.6 0.8 1];
Y = [0.2 0.6 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,2)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test3
X = [0.2 0.4 0.6 0.8 1];
Y = [0.2 0.6 0.3 0.6 0.2];

k = 3;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,3)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test4
X = [0.2 0.4 0.6 0.8 1];
Y = [0.2 0.6 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,4)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test5
X = [0.2 0.4 0.6 0.8 1];
Y = [0.2 0.4 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,5)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test6
X = [0.2 0.4 0.4 0.6 0.8 1];
Y = [0.2 0.6 0.6 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,6)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test7
X = [0.2 0.4 0.5 0.6 0.8 1];
Y = [0.2 0.6 0.59 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1:m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,7)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test8
X = [0.2 0.4 0.5 0.6 0.8 1];
Y = [0.2 0.6 0.59 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 1 1:m-2*k-2 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,8)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);

%% test9
X = [0.2 0.4 0.5 0.6 0.8 1];
Y = [0.2 0.6 0.59 0.3 0.6 0.2];

k = 2;
n = length(X)-1;
m = n + k + 1;
noeuds = [zeros(1,k+1) 2:m-2*k-1 m-2*k-1 (m-2*k)*ones(1,k+1)];
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

subplot(3,3,9)
title(['degre = ', num2str(k),' , vecteur de noeuds : [', num2str(noeuds), ']']);
hold on
plot(X,Y);
plot(X2,Y2);
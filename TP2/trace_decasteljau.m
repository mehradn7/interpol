%% TP n° 2 

%% Ex.2 - Tracé de Casteljau évaluation
pas = 0.01;
T = 0:pas:1;


X_casteljau = zeros(1,length(T));
Y_casteljau = zeros(1,length(T));

for k=1:length(T)
    y = decasteljau(T(k),X,Y);
    X_casteljau(k) = y(1);
    Y_casteljau(k) = y(2);
end
subplot(2,3,2)
hold on;
title('Courbe de Bézier')
plot(X,Y);
plot(X_casteljau,Y_casteljau);


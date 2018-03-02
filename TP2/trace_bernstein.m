%% TP n° 2 

%% Ex.1 - Tracé des fonctions de la base de Bernstein
pas = 0.01;
T_bernstein = 0:pas:1;
n = 25; %degré

subplot(2,3,1)
hold on;
title(['Polynômes de Bernstein de degré ' num2str(n)])
for k=0:n
    f_bernstein = @(t)bernstein(t,k,n);
    plot(T_bernstein, arrayfun(f_bernstein,T_bernstein));
end


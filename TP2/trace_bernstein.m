%% TP n° 2 

%% Ex.1 - Tracé des fonctions de la base de Bernstein
pas = 0.01;
T = 0:pas:1;
n = 15; %degré

hold on;

for k=0:n
    f_bernstein = @(t)bernstein(t,k,n);
    plot(T, arrayfun(f_bernstein,T));
end
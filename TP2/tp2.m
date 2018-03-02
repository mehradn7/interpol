%% Script de tests de l'ensemble du TP 2

%% Récupérer les points saisis par l'utilisateur
[X,Y] = saisi_points();

trace_bernstein;
trace_decasteljau;
trace_decasteljau_subdiv;
trace_decasteljau_subdiv_i;
trace_hodographe;

%% Questions
%% 1. Polynômes de Bernstein
%% Lorsque l'on augmente le degré, les courbes deviennent de plus en plus
% "tassées"

%% 2.Courbe de Bézier
%% degré élevé : la courbe ne suit pas très précisément le polynome de controle

%% 5 .Hodographe
%% Si l'hodographe passe par l'origine, alors cela veut dire qu'il existe  
% un instant où le vecteur vitesse s'annule, donc la paramétrisation n'est
% pas régulière
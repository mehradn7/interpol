function [ M_res ] = applique_subdivision( M, nb_iter, degre )
% Prend en paramètre une matrice M représentant les abscisses d'une grille
% de points
% Renvoie une matrice M_res résultat de l'application de subdivise_ferme
% sur chaque ligne de la matrice M

quelconque = zeros(1,42);
size(M)
M_res = zeros(size(M,1), (2^nb_iter)*size(M,2)+1);
size(M_res)
for i=1:size(M,1)
    a = subdivise_ouvert(nb_iter,degre,M(i,:), quelconque);
    M_res(i,:) =a;
end

end


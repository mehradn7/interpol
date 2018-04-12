function [ M_res ] = applique_subdivision( M, degre,nb_iter )
% Prend en paramètre une matrice M représentant les abscisses d'une grille
% de points
% Renvoie une matrice M_res résultat de l'application de subdivise_ferme
% sur chaque ligne de la matrice M


for i=1:size(M,1)
    [a] = subdivise_ouvert(nb_iter,degre,M(i,:));
    if i==1
        M_res = zeros(size(M,1), size(a,2));
    end
    M_res(i,:) =a;
end

end


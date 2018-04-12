function [newX] = subdivise_ferme(nb_iter, degre, X)
    newX = zeros(1,2*length(X));
    
    %% Itérer nb_iter fois
    for n=1:nb_iter
        
        %% Doubler les points
        newX = repelem(X,2);
        
        %% Prendre les milieux de 2 points consécutifs
        for k=1:degre
            X_sub = (newX(1:end-1) + newX(2:end))/2;
            newX = [X_sub, (newX(end) + newX(1))/2];
        end
        X = newX;
    end
    
    newX = [newX, newX(1)];
    
    
    
    


end


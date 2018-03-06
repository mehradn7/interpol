function [newX,newY] = subdivise_ouvert(nb_iter, degre, X,Y)
    newX = zeros(1,2*length(X));
    newY = zeros(1,2*length(X));
    
    %% Itérer nb_iter fois
    for n=1:nb_iter
        
        %% Doubler les points
        newX = repelem(X,2);
        newY = repelem(Y,2);
        
        %% Prendre les milieux de 2 points consécutifs
        for k=1:degre
            X_sub = (newX(1:end-1) + newX(2:end))/2;
            newX = [X(1),X_sub, X(end)];
            
            Y_sub = (newY(1:end-1) + newY(2:end))/2;
            newY = [Y(1),Y_sub, Y(end)];
        end
        X = newX;
        Y = newY;
    end
    


end


function [newX,newY] = subdivise(nb_iter, degre, X,Y)
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
            newX = [X_sub, (newX(end) + newX(1))/2];
            
            Y_sub = (newY(1:end-1) + newY(2:end))/2;
            newY = [Y_sub, (newY(end) + newY(1))/2];
        end
        X = newX;
        Y = newY;
    end
    
    newX = [newX, newX(1)];
    newY = [newY, newY(1)];
    
    
    
    


end


function [newX,newY] = subdivise_ouvert(nb_iter, degre, X,Y)
newX = X;
newY = Y;

%% Itérer nb_iter fois
for n=1:nb_iter
    
    %% Doubler les points
    newX = repelem(newX,2);
    newY = repelem(newY,2);
    
    %% Prendre les milieux de 2 points consécutifs
    for k=1:degre
        X_sub = (newX(1:end-1) + newX(2:end))/2;
        newX = [X(1),X_sub, X(end)];
        
        Y_sub = (newY(1:end-1) + newY(2:end))/2;
        newY = [Y(1),Y_sub, Y(end)];
    end

end



end


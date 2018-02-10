function [y] = Li(i,x,X)
    prod = 1;
    for k=1:length(X)
        if k ~= i
            prod = prod * ((x-X(k)) / (X(i) - X(k)));
        end
    end
    y = prod;
end


function Tore = tore()

Tore = zeros(4,4,3);
Tore(:,:,1) = [-1.5  0.0  1.5  0.0
			   -1.5  0.0  1.5  0.0
			   -0.5  0.0  0.5  0.0
			   -0.5  0.0  0.5  0.0];
Tore(:,:,2) = [ 0.0  1.5  0.0 -1.5
			    0.0  1.5  0.0 -1.5
			    0.0  0.5  0.0 -0.5
			    0.0  0.5  0.0 -0.5];
Tore(:,:,3) = [-0.5 -0.5 -0.5 -0.5
			    0.5  0.5  0.5  0.5
			    0.5  0.5  0.5  0.5
			   -0.5 -0.5 -0.5 -0.5];
          
% Tore(:,2,:) = 2*Tore(:,2,:); % commenter pour avoir une figure symétrique
% Tore(:,1,:) = 0.5*Tore(:,1,:); % commenter pour avoir une figure symétrique
surf(Tore(:,:,1),Tore(:,:,2),Tore(:,:,3))

end
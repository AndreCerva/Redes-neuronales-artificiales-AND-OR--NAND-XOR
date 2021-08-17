function [S1,ERROR] = PMC_XOR(X1,X2,D)
%FEED FOWARD//PROPAGACIÓN HACIA DELANTE
%*********************** CAPA DE ENTRADA **********************************
E1=X1;
E2=X2;

%*************,********** CAPA OCULTA **************************************
W1=[9.75871424068633 0.986125907804211;9.75674844229184 0.986125371006560];
% NEURONA O1 
O1=W1(1,1)*E1+W1(2,1)*E2;
%FUNCION SIGMOIDAL
O1S=1/(1+exp(-1*O1));
%NEURONA O2
O2=W1(1,2)*E1+W1(2,2)*E2;
O2S=1/(1+exp(-1*O2));
%*********************** CAPA DE SALIDA **********************************
%NEURONA  S1
W2=[70.4691;-87.5542]; %Primer argumento del rand es el num de renglones
S1E=W2(1,1)*O1S+W2(2,1)*O2S;
S1=1/(1+exp(-1*S1E));
ERROR=D-S1;
end


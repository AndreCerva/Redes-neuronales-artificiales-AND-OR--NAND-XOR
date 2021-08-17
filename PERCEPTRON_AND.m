function [Y,ERROR,NW1,NW2,NTHETA] = PERCEPTRON_AND(X1,X2,D)
% W1=0.5;%pesos ORIGINALES
% W2=0.7;
% THETA=0.24;%bias
% W1=0.25;%pesos SEGUNDOS
% W2=0.7;
% THETA=0.49;%bias
W1=0.25;%pesos IDEALES
W2=0.95;
THETA=0.49;%bias
n=0.25;%factor de aprendizaje
%Y=F(u)
%u=(XiWi-theta)
u=(X1*W1-THETA)+(X2*W2-THETA);
%funcion escalon f(u)
if u>=0
    F=1;
else
    F=0;
end

Y=F; %SALIDA DE LA NEURONA
%ERROR ENTRE LO DESEADO Y LO OBTENIDO DE LA NEURONA
ERROR=D-Y;
Delta1=n*ERROR*X1;
Delta2=n*ERROR*X2;
NW1=W1+Delta1;%NUEVO PESO
NW2=W2+Delta2;%NUEVO PESO
NTHETA=THETA-n*ERROR;%NUEVO BIAS

end


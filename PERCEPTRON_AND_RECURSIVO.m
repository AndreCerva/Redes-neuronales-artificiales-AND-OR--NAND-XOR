%Codigo recursivo 
clear all,clc,W1=0.5;,W2=0.2;,THETA=0.24;,n=0.25;
%MATRIZ DE Entrenamieno
A=[1 1 1; 1 0 0; 0 1 0; 0 0 0];
k=32; %numero de iteraciones
c=1;
for i=1:k
    if c==5
        c=1;
    else
        c=c;
    end
X1=A(c,1);X2=A(c,2);D=A(c,3);
%Y=F(u), %u=(XiWi-theta)
u=((X1*W1)+(X2*W2))-THETA;
%funcion escalon f(u)
if u>=0
    F=1;
else
    F=0;
end
Y=F; %SALIDA DE LA NEURONA
%ERROR ENTRE LO DESEADO Y LO OBTENIDO DE LA NEURONA
ERROR(i)=D-Y;
Delta1=n*ERROR(i)*X1;
Delta2=n*ERROR(i)*X2;
W1=W1+Delta1;%NUEVO PESO
W2=W2+Delta2;%NUEVO PSO
THETA=THETA-n*ERROR(i);%NUEVO BIAS
c=c+1;
end
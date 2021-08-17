%Codigo perceptron XOR recursivo
clear all, clc
%Definimos pesos y bias aleatorios 
W1=0.42;
W2=0.615;
THETA=0.5;
%factor de aprendizaje
n=0.375;
%MATRIZ DE ENTRADAS Y SALIDA DESEADA
A=[0 0 0;0 1 1;1 0 1;1 1 0];
%Iteraciones
k=1500;
c=1;
for i=1:k
    if c==5
        c=1;
    else
        c=c;
    end
X1=A(c,1);X2=A(c,2);D=A(c,3);

%Ecuaciones
%Y=f(u)
%u=xi*wi-theta
u=((X1*W1)+(X2*W2))-THETA;
%Funcion escalon
if u>=0
    F=1;
else
    F=0;
end
Y=F;%SAlida de la neurona
ERROR(i)=D-Y;
Delta1=n*ERROR(i)*X1;
Delta2=n*ERROR(i)*X2;
W1=W1+Delta1;%NUEVO PESO
W2=W2+Delta2;%NUEVO PSO
THETA=THETA-n*ERROR(i);%NUEVO BIAS
c=c+1;
end
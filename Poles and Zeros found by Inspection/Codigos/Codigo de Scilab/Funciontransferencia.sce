clear all
clc
s=poly(0,"s");
disp('En base a la ecuación:');   //Arrojar a la pantalla "En base a la ecuación"
disp('Ys=(1/s)*(((b*s)+c)/((d*s)+a))');   //Ecuacion para identificar a, b y c
a=input('Ingrese el número correspondiente a:');  //Introdur valor a
b=input('Ingrese el número correspondiente b:');  //Introdur valor b
c=input('Ingrese el número correspondiente c:');  //Introdur valor c
d=input('Ingrese el número correspondiente d:');  //Introdur valor d
FT=(c/(a*%s))+(((b/d)-(c/a))/((%s)+a));    //Funcion de transferencia para Y(s)
disp('Y(s) simplificado es:');  //Simplificado de la función de transferencia
disp(FT);   //Mostrar en pantalla la función de transferenca simplificada
A=(c/(a*%s));   //Guardar en A la primer fracción parcial
B=(((b/d)-(c/a))/((%s)+a));   //Guardar en B la segunda fracción parcial
disp('Y(s) es:');   //Mostrar en pantalla "Y(s) es:"
Ys=[A B];   //Guardar en un vector A y B
disp(Ys);   //Mostrar en un vector Y(s)
t=0:0.0000000001:0.000003;   //t tomará valores del 0 al 20 cada 0.01 valores
yt=(c/a)+(((b/d)-(c/a))*exp(-a*t));   //Y(t) sera la salida en función del tiempo
plot(t,yt)   //Graficar yt con respecto a t
title('Respuesta de la función de transferencia en el tiempo')//Titulo de la grafica
xlabel('Tiempo t')   //Nombre del eje de las "x"
ylabel('Y(t)')   //Nombre del eje de las "y"

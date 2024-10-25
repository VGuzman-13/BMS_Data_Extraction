%%% Autor: Guzmán Víctor %%%%
%%% Fecha: 14/10/2024    %%%%
%%% Adquisición de datos %%%%

clear variables;
close all;
clc

% parametro de tiempo:
t = (0.01:0.01:2*pi)'; % dos ciclos 
% crear señales genericas
y1 = 5 * sin(t);
y2 = 0.5 * sin(t*60);
y3 = y1 + y2;
% graficar 
figure(1)
subplot(3,1,1)
plot(t,y1);
subplot(3,1,2)
plot(t,y2);
subplot(3,1,3)
plot(t,y3);
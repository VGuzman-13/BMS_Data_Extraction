%%% Alumno: Guzmán Víctor %%%%
%%% Fecha: 14/10/2024     %%%%
%%% Adquisición de datos  %%%%

clear variables;
close all;
clc

t = (0.1:0.1:66)';

BMS_data=readtable('data.csv','VariableNamingRule','preserve'); 
Amp = table2array(BMS_data(:,1)); % de tabla a vector

subplot(2,1,1);
plot(t,Amp);
title('Señal sin procesar');
legend('Amperaje original');
xlabel('Tiempo (s)');
ylabel('Amperaje');

Amp_f = lowpass(Amp, 50*pi/180, 10);
subplot(2,1,2);
plot(t,Amp_f, 'r');
title('Señal procesada');
legend('Amperaje filtrado');
xlabel('Tiempo (s)');
ylabel('Amperaje');
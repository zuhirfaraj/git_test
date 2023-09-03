%Valentin Finsterle 18/04/2020 Gruppe A2

%Aufräumen
clc;
clear;
close all;

%%Rechnen
x = -6:0.001:6;     %Erstellen des Intervalls von -6 bis 6
y = f(x);           %Übergabe des Intervalls

%Graph erstellen
plot(x,y);          
xlabel('X');        %Beschriftung der X-Achse
ylabel('Y');        %Beschriftung der Y-Achse
grid;   
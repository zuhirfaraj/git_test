%Valentin Finsterle Gruppe A2 24/03/2021

%aufräumen
clc
clear
close all

R3array = 0:0.1:30;
P3array = zeros(size(R3array));

%Widerstandswert an Stelle a an Nebenfunktion übergeben
for a = 1:length(R3array)
    P3array(a) = Leistung(R3array(a));
end

%%Diagramm
figure
plot(R3array, P3array)
xlabel('Widerstand R3 in Ohm')
ylabel('Leistung R3 in Watt')
title ('Leistung abhängig vom Widerstand')
grid 

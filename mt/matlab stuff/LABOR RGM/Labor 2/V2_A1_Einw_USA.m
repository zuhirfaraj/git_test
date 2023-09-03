%Valentin Finsterle 18/04/2020 Gruppe A2

%%Aufräumen
clear;
clc;
close all;

%%Datei Laden
load('Einwohner_USA_1900_2020.mat');

Jahr = Daten(:,1);
Einwohner = Daten(:,2);

%%Plot erstellen
figure(1)
plot(Jahr,Einwohner,'-o')
xlabel('Jahr')
ylabel('Einwohner in Millionen')
title('Einwohner pro Jahr')
legend('Einwohner/Jahr')
grid



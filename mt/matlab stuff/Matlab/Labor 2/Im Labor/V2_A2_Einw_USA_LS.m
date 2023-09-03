%Valentin Finsterle 28/04/2020 Gruppe A2

%%Aufräumen
clear;
clc;
close all;

%%Datei Laden
load('Einwohner_USA_1900_2020.mat');

Jahr = Daten(:,1);
Jahr2 = 1900:10:2030;
Einwohner = Daten(:,2);
A = [ones(size(Jahr)) Jahr Jahr.^2];

%%Rechnung 
c = A\Einwohner;
y = c(1)+ c(2)*Jahr2 + c(3)*Jahr2.^2;

%%Plot erstellen
figure(1)
plot(Jahr,Einwohner,'-o',Jahr2,y,'-o');
xlabel('Jahr')
ylabel('Einwohner in Millionen')
title('Einwohner pro Jahr')
legend('Einwohner/Jahr2020','Einwohner/Jahr2030')
grid



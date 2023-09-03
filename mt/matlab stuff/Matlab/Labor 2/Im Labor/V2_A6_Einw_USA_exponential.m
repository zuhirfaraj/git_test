%Valentin Finsterle 28/04/2020 Gruppe A2

%%Aufräumen
clc; 
clear; 
close all;

warning('on');

%%Datei Laden
load('Einwohner_USA_1900_2020.mat');

Jahr = Daten(:,1);
Jahr2 = 1800:10:2030;
Einwohner = Daten(:,2);

%%Aus A5
p = polyfit(Jahr,Einwohner,2);
h = polyval(p,Jahr);

%%Rechnung
p2 = polyfit(Jahr,log(Einwohner),1);
K = exp(p2(2));

Einwohner_p = polyval(p, Jahr2);
Einwohner_p2 = K*exp(p2(1)*Jahr2);

%%Schaubild
figure(1);
plot(Jahr2,Einwohner_p,Jahr2,Einwohner_p2,'-');
title('Einwohner pro jahr');
xlabel('Jahr');
ylabel('Einwohner');
legend('Polynom 2.Ordnung', 'Exponentialfunktion');
grid;
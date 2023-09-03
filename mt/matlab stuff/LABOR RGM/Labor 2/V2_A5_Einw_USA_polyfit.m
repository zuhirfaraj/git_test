%Valentin Finsterle 28/04/2020 Gruppe A2
warning('on');

%%Aufräumen
clc; 
clear; 
close all;

%%Datei Laden
load('Einwohner_USA_1900_2020.mat');

Jahr = Daten(:,1);
Jahr2 = 1910:10:2030;
Einwohner = Daten(:,2);

%%Rechnung
p = polyfit(Jahr, Einwohner, 2);
h = polyval(p,Jahr);
p2 = polyfit(Jahr2, Einwohner, 2);
h2 = polyval(p2,Jahr2);

%%Schaubild
figure(1);
plot(Jahr,h,'-o',Jahr2,h2,'-o');
title('Einwohner pro jahr');
xlabel('Jahr');
ylabel('Einwohner');
legend('Linie1', 'Linie2');
grid;
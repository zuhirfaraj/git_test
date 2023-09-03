%Valentin Finsterle Gruppe A2 20/03/2021
clear
clc

M=load('Messung.csv');

t = M(:,1);
v = M(:,2);
s = M(:,3);

TA= t(5)-t(4);

vmax = max(v);

vmaxkmh= vmax * 3.6;

smax = max(s);

fprintf('Abtastzeit: \t %.2fs\n', TA)
fprintf('max. Geschw.: \t %.2fm/s = %.2fkm/h\n',vmax ,vmaxkmh)
fprintf('Weg: \t\t\t %.2fm\n',smax)
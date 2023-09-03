%Valentin Finsterle Gruppe A2 20/03/2021
close all;
clc;
M=load('Messung.csv');

t = M(:,1);
v = M(:,2);
s = M(:,3);
a = v/t;

TA= t(5)-t(4);

vmax = max(v);

vmaxkmh= vmax * 3.6;

smax = max(s);

FL = 1/2 * 1.2 *(1/3)* 2.5 .*v.^2;
PL = FL.*v;

disp(sprintf('Abtastzeit: \t %.2fs', TA))
disp(sprintf('max. Geschw.: \t %.2fm/s = %.2fkm/h',vmax ,vmaxkmh))
disp(sprintf('Weg: \t\t\t %.2fm',smax))


w = weg(t,a);

figure(1)
plot(t, v);
xlabel('Zeit in Sekunden')
ylabel('Geschwindigkeit in m/s')
title('Zeit - Geschwindigkeit')
grid

figure(2)
plot(t, s, t, w);
xlabel('Zeit in Sekunden')
ylabel('Weg in Meter')
title('Zeit - Weg')
grid
legend('gemessen', 'berechnet')
%Der Verlauf ist anfangs ähnlich, weicht aber in der Mitte etwas stärker ab

figure(3)
plot(s, v);
xlabel('Weg in Meter')
ylabel('Geschwindigkeit in m/s')
title('Weg - Geschwindigkeit')
grid

figure(4)
plot(t, FL);
xlabel('Zeit in Sekunden')
ylabel('Luftwiederstand in Newton')
title('Zeit - Luftwiederstand')
grid

%Valentin Finsterle Gruppe A2 20/03/2021
% Flaeche.m
%
% Berechnung von Flaeche und Umfang von
% - Kreis
% - innerem Quadrat
% - aeusserem Quadrat
% Loeschen aller Variablen
clear
% Definition des Radius
r = input('Geben sie den Radius ein: ');
disp(sprintf('Radius r = %2.1f', r))
%%Kreis
% Berechnung fuer den Kreis
U_K = 2*pi*r;
A_K = pi*r^2;
disp(sprintf('Kreis: U = %2.1f,\t A = %f', U_K, A_K))
%%innerer kreis
% Berechnung inneren quadrat
U_i = 4*sqrt(2) * r;
A_i = 2*r^2;
disp(sprintf('Innerer kreis: U = %2.1f,\t A = %2.f', U_i, A_i))
%%aeusserer kreis
% Berechnung Aeusserer kreis
U_a = 8*r;
A_a = 4*r^2;
disp(sprintf('äusserer Kreis: U = %2.1f,\t A = %3.f', U_a, A_a))
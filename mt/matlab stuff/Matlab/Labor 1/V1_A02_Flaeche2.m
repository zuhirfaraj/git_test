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
r = 5;

%%Kreis
% Berechnung fuer den Kreis
U_K = 2*pi*r
A_K = pi*r^2

%%innerer kreis
% Berechnung inneren quadrat
U_i = 4*sqrt(2) * r
A_i = 2*r^2

%%aeusserer kreis
% Berechnung Aeusserer kreis
U_a = 8*r
A_a = 4*r^2
c = exp(-0.3);

deltax=1/4;
x=1;
v = 20:-2:1;
zahl=v(end-1);
while (x ~=0)

x = x-deltax;

end

mw=mean(M);


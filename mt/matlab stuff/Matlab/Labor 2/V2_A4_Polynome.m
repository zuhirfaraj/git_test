%Valentin Finsterle 18/04/2020 Gruppe A2

%Aufräumen
clc;
clear;
close all;

%Polynome als Vektoren speichern
A = [7 13];
B = [1 -2 -3];

%Polynommultiplikation
C = conv(A,B);

%Partialbruchzerlegung
D = residue(A,B);

%Stammfunktion
F = polyint(B);

%Ableitung
E = polyder(B);

%Plot erstellen
x = -3:1:5;
p = polyval(C,x);

figure()
plot(x, p, 'o-')
xlabel('x');
ylabel('y');
legend ('C(x)')
grid




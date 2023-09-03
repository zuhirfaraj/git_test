%Valentin Finsterle Gruppe A2 20/03/2021
%%Gegeben
a=[1; 2; 3];
b=[4 5 6];
A=[1 2 -1; -2 0 3];
B=[3 0 1; 1 2 4; 0 1 -1];

%%Berechnungen
c = a + b'
d = 2*a
e = a' * c
f = cross(a, c)
g = A * b'

h = B * a
C = a * c'
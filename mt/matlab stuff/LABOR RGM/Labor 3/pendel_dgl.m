%Valentin Finsterle 12/05/2020 Gruppe A2

%zur Berechnung der Differentialgleichung (nicht linear)
%Eingabe von Vektor t und Matrix y
%Rückgabe von Spaltenvektor ypunkt

function ypunkt = pendel_dgl(t,y)

g = 9.81;
m = 0.3;
l = 0.4;
d = 0.01;

%% DGL
y1punkt = y(2);
y2punkt = -g/l*sin(y(1))-d/(m*l^2)*y(2);
ypunkt = [y1punkt;y2punkt];

end
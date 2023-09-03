%Valentin Finsterle Gruppe A2 20/03/2021
%X-Achsenabschnitt definieren
x = [0:0.1:2*pi];

%Werte für Funktion 1
y1 = myfunction(x,1);
%Werte für Funktion 2
y2 = myfunction(x,cos(x));

%%Darstellung in einem Graph
plot(x,y1,x,y2);
xlabel('x')
ylabel('y')
grid
legend('sin(x)', 'sin(x)*cos(x)')



%Valentin Finsterle 18/04/2020 Gruppe A2

function y = f(x)
a = [1 4 5];        %polynom a speichern als vektor
b = [1 -6 10];      %polynom b speichern als vektor

%Berechnung mit dem übergebenen x-Wert
ax=polyval(a,x);   
bx=polyval(b,x);

y= (5./ax) + (4./bx) -1;    %Berechnen des Funktionswerts y
end
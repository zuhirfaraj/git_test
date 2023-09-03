%Valentin Finsterle 12/05/2020 Gruppe A2

%Verlauf von phi / t
%Eingabe von Vektor t, Masse m, Länge l, Dämpfung d
%Gibt Vektor phi/rad zurück

function phi = pendel_linear(t, m, l, d)

g = 9.81;
alpha = -d/(2*m*l^2);
omega = sqrt((g/l)-(d^2/(4*m^2*l^4)));
phi=exp(alpha.*t).*(-(alpha/omega).*sin(omega.*t)+cos(omega.*t));

end
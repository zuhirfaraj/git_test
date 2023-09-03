%Valentin Finsterle 03/05/2020 Gruppe A2

function phi = pendel_linear(t, m, l, d)
%%Gegeben
phi_null = 1;
g=9.81;

alpha = -(d/(2*m*(l^2)));
w = (g/l-((d^2)/(4*(m^2)*(l^4))))^(1/2);

%%Differentialgleichung
phi = phi_null.*exp(alpha.*t).*(-(alpha/w).*sin(w.*t)+cos(w.*t));

end
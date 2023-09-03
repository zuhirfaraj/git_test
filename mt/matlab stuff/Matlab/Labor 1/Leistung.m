%Valentin Finsterle Gruppe A2 24/03/2021

function P3 = Leistung(R3)

R1 = 10;
R2 = 15;

u = [10; 0; 0];
R = [R1 R2 0; 0 -R2 R3; 1 -1 -1];

i = R\u;

P3 = R3 * (i(3)^2);
end

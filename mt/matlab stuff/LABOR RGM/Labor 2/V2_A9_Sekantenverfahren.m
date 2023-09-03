%Valentin Finsterle 18/04/2020 Gruppe A2

%%Aufräumen
clc;
clear; 
close all;

%%Erste Nullstelle
x1 = -5;
x2 = -4;

while(abs(x2-x1)>5e-5)
    xn = x2-f(x2)*(x2-x1)/(f(x2)-f(x1));

    x1 = x2;
    x2 = xn;

end
    fprintf('Nullstelle liegt bei N1(%g|%g)\n', x1, f(x1));
    
%%Zweite Nullstelle
x1 = 4;
x2 = 5;

while(abs(x2-x1)>5e-5)
    xn = x2-f(x2)*(x2-x1)/(f(x2)-f(x1));

    x1 = x2;
    x2 = xn;

end
    fprintf('Nullstelle liegt bei N2(%g|%g)', x1, f(x1));
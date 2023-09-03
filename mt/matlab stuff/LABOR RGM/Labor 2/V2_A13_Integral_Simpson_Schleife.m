%Valentin Finsterle 28/04/2020 Gruppe A2

%%Aufräumen
clc
clear
close all

%%
n=2;
a=-4;
b=4;
h=(b-a)/(2*n);

%%
mi = 0;
for i = 1:n
    mi = mi + f(a-h+2*h*i) ;
end

gi = 0;
for i = 1:n-1
    gi = gi+f(a+2*h*i);
end


Integral=(b-a)/(6*n)*(f(a)+2*gi+4*mi+f(b));
fprintf('Integral für n = %g ist: %g\n',n,Integral);


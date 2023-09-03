%Valentin Finsterle Gruppe A2 24/03/2021

%%Aufräumen
clear;
clc;
close all;

%%erste werte
a = 1;
b = 1e-16;

c= a+b-a;
d= -a+b+a;
e= a-a+b;
f= -a+a+b;
g= b+a-a;
h= b-a+a;

fprintf('1. Wert: %g \n', c)
fprintf('2. Wert: %g \n', d)
fprintf('3. Wert: %g \n', e)
fprintf('4. Wert: %g \n', f)
fprintf('5. Wert: %g \n', g)
fprintf('6. Wert: %g \n\n', h)

%%zweite werte
a=1;
b=1e-15;

c= a+b-a;
d= -a+b+a;
e= a-a+b;
f= -a+a+b;
g= b+a-a;
h= b-a+a;

fprintf('1. Wert: %g \n', c)
fprintf('2. Wert: %g \n', d)
fprintf('3. Wert: %g \n', e)
fprintf('4. Wert: %g \n', f)
fprintf('5. Wert: %g \n', g)
fprintf('6. Wert: %g \n\n', h)

%%dritte werte
a=1e16;
b=1;

c= a+b-a;
d= -a+b+a;
e= a-a+b;
f= -a+a+b;
g= b+a-a;
h= b-a+a;

fprintf('1. Wert: %g \n', c)
fprintf('2. Wert: %g \n', d)
fprintf('3. Wert: %g \n', e)
fprintf('4. Wert: %g \n', f)
fprintf('5. Wert: %g \n', g)
fprintf('6. Wert: %g \n', h)
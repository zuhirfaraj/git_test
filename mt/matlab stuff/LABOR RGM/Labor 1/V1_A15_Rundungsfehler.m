%Valentin Finsterle Gruppe A2 24/03/2021

%%Aufräumen
clear
clc
close all

x = 1;

deltax = input('Zahl eingeben!');
while (x > eps)
    x = x - deltax;
    fprintf('%g\n', x);
end

fprintf('!NULL');
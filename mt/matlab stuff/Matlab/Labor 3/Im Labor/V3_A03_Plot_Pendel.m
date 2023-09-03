%%
% Thorben Schulz, SoSe21Gruppe B, 05.05.2021
% Aufgabe 3
%%
%% 1) Aufräumen
clear
clc
close all

%% 2) Variablen
t = 1:0.01:25;
m = 0.3;
l = 0.4;
d = 0.01;

m2 = 0.2;
l2 = 0.3;
d2 = 0;

phi0 = 20;

%% 3) Funktionsaufruf
phi = phi0*pendel_linear(t,m,l,d);
phi2 = phi0*pendel_linear(t,m2,l2,d2);
%% 4) Plotten
figure(1)
plot(t,phi)
figure(2)
plot(t,phi2)

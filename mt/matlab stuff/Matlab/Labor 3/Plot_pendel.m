%Valentin Finsterle 03/05/2020 Gruppe A2

%% Aufräumen
clc;
clear;
close all;

%% Vektor t erstellen
t = 0:0.1:25;

%% Werte Aufgabe
m1 = 0.3;
l1 = 0.4;
d1 = 0.01;
phinull = 20;
%% Werte übergeben
phi_t = phinull * pendel_linear(t,m1,l1,d1);

figure(1)
plot(t,phi_t)
xlabel("t in sec")
ylabel("phi")
grid


%% Werte mit d2=0
m2 = 0.3;
l2 = 0.4;
d2 = 0;

%% Werte übergeben
phi_t2 = phinull * pendel_linear(t,m2,l2,d2);

figure(2)
plot(t,phi_t2)
xlabel("t in sec")
ylabel("phi")
grid


%% neue Werte
m3 = 1;
l3 = 2;
d3 = 3;

%% Werte übergeben
phi_t3 = phinull * pendel_linear(t,m3,l3,d3);

figure(3)
plot(t,phi_t3)
xlabel("t in sec")
ylabel("phi")
grid
%Valentin Finsterle 12/05/2020 Gruppe A2

%% Aufräumen
clear
clc 
close all;

%% Variablen
[t,y]=ode45(@RC_dgl,[0 20],0);      %solver ode45

%% Graphen
figure(1)
plot(t, sin(t), t, y)
xlabel('Zeit t in s')
ylabel('Signale')
legend('u(t)', 'y(t)')

figure(2)                           %Graph mit Schrittweite
plot(t(1:end-1), diff(t));  
xlabel('Zeit t in s')
ylabel('Schrittweite pro s')
grid
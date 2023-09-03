% Valentin Finsterle Gruppe A2 12.05.2021

%% Aufräumen
clear
clc
close all

%% Datei Laden 
werte = 'pendel_20_400mm.log';     %Messdatei laden
daten = load(werte);                %und als daten speichern
m = 0.28;
   
%% Rechnungen
t_high=daten(:,1);          %Spalte 1
t_low=daten(:,2);           %Spalte 2
richtung=daten(:,3);        %Spalte 3
w_high=daten(:,4);          %Spalte 4
w_low=daten(:,5);           %Spalte 5

t_messung=(t_low+t_high*256)*10^-2;     %bytes umrechnen
t_messung=t_messung-t_messung(1);

winkel=w_low+256*w_high-1000;
phi_grad=winkel/1024*360;

T_r=1.25;
omega_r=2*pi/T_r;
l_red_r=9.81/omega_r;

t1=3.64;                    %abgelesen
t2=112.6;                   %abgelesen
phi1=17.58;                 %abgelesen
phi2=3.85;                  %abgelesen

alpha=1/(t1-t2)*log(phi1/phi2);
d_r=-alpha*2*m*l_red_r^2;

t_sim=0:0.01:max(t_messung);
phi_math=max(phi_grad)*pendel_linear(t_sim,m,l_red_r,d_r);

%% Graph Messung
figure(1)
plot(t_messung,phi_grad,'b-',t_messung,richtung,'s-')
title('Messung')
xlabel('t in s')
ylabel('Winkel in Grad')
legend('Winkel','Auslenkung')
grid

%% Graph Simulation
figure(2)
plot(t_sim,phi_math)
title('Simulation')
xlabel('t in s')
ylabel('Winkel in Grad')
grid

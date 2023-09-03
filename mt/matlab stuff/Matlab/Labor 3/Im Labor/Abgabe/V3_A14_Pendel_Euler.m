%Valentin Finsterle 12/05/2020 Gruppe A2

%% Aufräumen
clear
clc 
close all;

%% Berechnen
h = input('H eingeben:');           
phi0 = input('Phi0 eingeben:');

y0=[phi0;0];

t = 0:h:25;
lt=length(t);
y = zeros(2,lt);
y(:,1)=y0;

for k=1:lt-1
    y(:,k+1) = y(:,k)+ h*pendel_dgl(t(k),y(:,k));
end

phi=y(1,:);                                     
phi2=phi0*pendel_linear(t,0.3,0.4,0.01);       

%% Graph
plot(t,phi,'b-',t,phi2,'r-')

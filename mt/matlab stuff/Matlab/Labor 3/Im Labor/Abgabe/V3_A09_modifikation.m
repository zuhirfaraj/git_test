%Valentin Finsterle 12/05/2020 Gruppe A2
%% Aufräumen
clear
clc 
close all;

%% Berechnen
h = input('Wert für h eingeben:');  %Schrittweite
t = 0:h:20;                         %Vektor t von 0 bis 20
le = length(t);

C = 1e-6;
u = sin(t);                         
R = 1e6;

y = zeros(1,le);
y(1) = 0;

for k = 1:le-1
    y(k+1) = y(k) + h*(-y(k)+u(k));
end

%% Graph
plot(t,u,"b-",t,y,"r-")
legend("Näherung","Genau")
xlabel("t in s")
ylabel("u(t) in V")
grid
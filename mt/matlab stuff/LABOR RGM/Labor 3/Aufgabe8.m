%Valentin Finsterle 03/05/2020 Gruppe A2
%% Aufräumen
clear
clc 
close all;

%% Berechnen
h = input('Wert für h eingeben:');
t = 0:h:5;
le = length(t);

C = 1e-6;
U0 = 1;
R = 1e6;

y = zeros(1,le);
y(1) = 0;

punkty = dgl(t);
genau = U0.*(1-exp(t./(-R*C)));

for k = 1:le-1
    y(k+1) = y(k) + h.*punkty(k);
end

%% Graph
plot(t,y,"b-",t,genau,"r-")
legend("Näherung","Genau")
xlabel("t in s")
ylabel("u(t) in V")
grid
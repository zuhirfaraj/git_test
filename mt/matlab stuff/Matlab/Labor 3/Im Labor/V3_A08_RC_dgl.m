%Valentin Finsterle 03/05/2020 Gruppe A2

%% Aufräumen
clear
clc 
close all

%% Rechnungen
h = input('H eingeben:');
t = 0:h:5;
t2 = 0:0.001:5;
lt = length(t);

R=1e6;
C=1e-6;
U0=1;

y=zeros(1,lt);
y(1)=0;

ypunkt=dgl(t);

exakt=U0.*(1-exp(t2./(-R*C)));

for k = 1:lt-1
    y(k+1) = y(k) + h.*ypunkt(k);
end

%% Graph
plot(t,y,"b-",t2,exakt,"r-")
legend("Annäherung","Exakt")
xlabel("t/s")
ylabel("u(t)/V")
grid


clc 
clear
close all

R1=10;
R2=15;


R3array = 0:0.1:30;
P3array = zeros(size(R3array));

for a = 1:length(R3array)
    P3array(a)=Leistung(R3array(a));
end

figure
plot(R3array,P3array)
xlabel('R')
ylabel('P3')
title('Test')
grid
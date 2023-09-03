%Valentin Finsterle Gruppe A2 24/03/2021

%aufräumen
clc;
clear;
close all;

%Vektoren
A = [1 2 -1; -1 1 3; 2 7 -1];
c = [4; -1; 11];

%rechnung
if abs(det(A)) > eps
    x = A\c;            %alternativ mit x=A\c möglich!
    disp(x);                
    
else
    fprintf('nicht möglich');
end



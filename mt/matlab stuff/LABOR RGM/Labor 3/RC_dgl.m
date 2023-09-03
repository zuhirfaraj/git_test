%Valentin Finsterle 12/05/2020 Gruppe A2

%Fuktion die das RC-Glied berechnet 
%Empfängt Vektor t und übergebenen Wert y
%gibt den Vektor ypunkt zurück

function ypunkt = RC_dgl(t,y)   

    ypunkt = -y+sin(t);         
    
end
%% Uppgift 6. Best�m str�mmen i(t) i LCR-krets

clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret

%% 6.1 (Papper och penna) St�ll upp en differentialekvation f�r str�mmen i(t) 

% u = L.i'+(1/C).int(i)+(R1+R2).i
% Differentiera b�da sidor f�r vi: u'=L.i''+(1/C).i+(R1+R2).i'
% l�ta R=R1+R2, sedan baserad p� Kirchhoff lag: i''+(R/L).i'+(1/LC).i =(1/L).u'

%% 6.2 L�s ekvationen och ber�kna str�mmen i(t)
a=6; % mitt personnummer
R1=20; R2=50; L=1; C=0.001; % v�rden av elektriska element

syms i(t) % deklarera i(t) som symbolisk funktion
R=R1+R2;
ekv=diff(i,2)+(R/L)*diff(i)+i/(L*C) == (1/L)*diff((15+a)*cos(10*t)) % DE baserad p� Kirchhoff-lag 
V1=i(0) == 12 % villkoret 1
Di=diff(i) % mellansteg: Beteckna i' som Di
V2=Di(0) == 1 % villkor 2 
sol=dsolve(ekv,V1,V2) % l�ser DE 

%% 6.3 Plotta l�sningen 
figure(1) % n�sta graf kommer att plottas i(t) i figure(1)
ezplot(sol,[0,10]) % plottar l�sningskurvan i intervallet [0,10]
ylabel('i(t)')
title('str�mmen i(t) i LCR-krets')
grid on




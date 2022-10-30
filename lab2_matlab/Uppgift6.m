%% Uppgift 6. Bestäm strömmen i(t) i LCR-krets

clear % Rensa variabler och funktioner från minnet
clc % Rensa kommandofönstret

%% 6.1 (Papper och penna) Ställ upp en differentialekvation för strömmen i(t) 

% u = L.i'+(1/C).int(i)+(R1+R2).i
% Differentiera båda sidor får vi: u'=L.i''+(1/C).i+(R1+R2).i'
% låta R=R1+R2, sedan baserad på Kirchhoff lag: i''+(R/L).i'+(1/LC).i =(1/L).u'

%% 6.2 Lös ekvationen och beräkna strömmen i(t)
a=6; % mitt personnummer
R1=20; R2=50; L=1; C=0.001; % värden av elektriska element

syms i(t) % deklarera i(t) som symbolisk funktion
R=R1+R2;
ekv=diff(i,2)+(R/L)*diff(i)+i/(L*C) == (1/L)*diff((15+a)*cos(10*t)) % DE baserad på Kirchhoff-lag 
V1=i(0) == 12 % villkoret 1
Di=diff(i) % mellansteg: Beteckna i' som Di
V2=Di(0) == 1 % villkor 2 
sol=dsolve(ekv,V1,V2) % löser DE 

%% 6.3 Plotta lösningen 
figure(1) % nästa graf kommer att plottas i(t) i figure(1)
ezplot(sol,[0,10]) % plottar lösningskurvan i intervallet [0,10]
ylabel('i(t)')
title('strömmen i(t) i LCR-krets')
grid on




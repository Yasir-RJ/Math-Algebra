%% Uppgift 5 differentialekvationer

clear % Rensa variabler och funktioner från minnet
clc % Rensa kommandofönstret

%% DE 1
a=6; % mitt personnummer
b=6;
c=7;
syms y(t) % deklarera y(t) som symbolisk funktion
ekv1=diff(y)-(1+a)*y == 0 % ekvationen 1
V1=y(0) == 2 % villkoret
sol1=dsolve(ekv1, V1) % löser DE 
figure(1) % nästa graf kommer att plottas i figure(1)
ezplot(sol1,[-3,3]) % plottar lösningskurvan i intervallet [-3,3]
grid on

%% DE 2
clear % Rensa variabler och funktioner från minnet
a=6; % mitt personnummer
b=6;
c=7;
syms y(t) % deklarera y(t) som symbolisk funktion
ekv2=diff(y,2)-(3+b)*diff(y)+(2+b)*y == 2*t+3 % ekvationen 2
V1=y(0) == 0 % villkoret 1
Dy=diff(y) % mellansteg: Beteckna y' som Dy
V2=Dy(0) == 2 % villkor 2 
sol2=dsolve(ekv2, V1,V2) % löser DE 
figure(2) % nästa graf kommer att plottas i figure(2)
ezplot(sol2,[-3,3]) % plottar lösningskurvan i intervallet [-3,3]
grid on

%% DE 3
clear % Rensa variabler och funktioner från minnet
a=6; % mitt personnummer
b=6;
c=7;
syms y(t) % deklarera y(t) som symbolisk funktion
ekv3=diff(y,2)+(1+c)*y == 0 % ekvationen 3
V1=y(0) == 0 % villkoret 1
Dy=diff(y) % mellansteg: Beteckna y' som Dy
V2=Dy(0) == 3 % villkor 2 
sol3=dsolve(ekv3, V1,V2) % löser DE 
figure(3) % nästa graf kommer att plottas i figure(3)
ezplot(sol3,[-3,3]) % plottar lösningskurvan i intervallet [-3,3]
grid on

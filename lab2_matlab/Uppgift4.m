%% Uppgift 4 DIFFERENTIALEKVATIONER

clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret
%% Exempel 1
% Anv�nd kommandot dsolve i Matlab f�r att l�sa f�ljande differentialekvation och plotta l�sningen
syms y(t) % deklarera y(t) som symbolisk funktion
ekv1=diff(y)+ 10*y == exp(-10*t) % ekvationen
V1=y(0) == 1 % villkoret
sol1=dsolve(ekv1, V1) % l�ser DE (l�sningen kallas sol1)
f1=simplify(sol1) % f�renklar l�sning och �ndrar namn till f1
figure(1) % n�sta graf kommer att plottas i figure(1)
ezplot(f1,[-3,3]) % plottar l�sningskurvan i intervallet [-3,3]
grid on

%% Exempel 2
% Anv�nd kommandot dsolve i Matlab f�r att l�sa f�ljande differentialekvation och plotta l�sningen
clear % Rensa variabler och funktioner fr�n minnet
syms y(t) % deklarera y(x) som symbolisk funktion
ekv4=diff(y,2)+4*diff(y)+ 3*y == 10*sin(2*t) % ekvationen
V1=y(0) == 1 % villkor 1: y(0)=1
Dy=diff(y) % mellansteg: Beteckna y' som Dy
V2=Dy(0)==2 % villkor 2 y'(0)=2
sol1=dsolve(ekv4, V1,V2) % l�sning
figure(2) % n�sta graf kommer att plottas i figure(2)
ezplot(sol1,[0,10]) % plottar l�sningskurvan 
grid on


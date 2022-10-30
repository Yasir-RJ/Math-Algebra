
clear
clc
%% Rotationsmatrisen med vinkeln v:
v=2*pi/18
A=[cos(v), -sin(v); sin(v),cos(v) ]
%% Kvadratens h�rnpunkter skriver vi som kolonnmatriser:
P1=[3;3]
P2=[4;3]
P3=[4;4]
P4=[3;4]
%% Vi roterar separat varje h�rnpunkt (genom att multiplicera med matrisen A)
Q1=A*P1, Q2=A*P2, Q3=A*P3, Q4=A*P4
%% Vi plottar de tv� kvadraterna i en figur
% F�r att plotta en m�ngh�rning best�mmer vi tv� separata listor
% en lista med x-koordinater och
% en lista med y-koordinater
xp=[P1(1), P2(1), P3(1), P4(1),P1(1)] % xkoordinat i punkten Pk �r Pk(1)
yp=[P1(2),P2(2), P3(2),P4(2) P1(2)] % ykoordinat i punkten Pk �r Pk(2)
xq=[Q1(1),Q2(1), Q3(1),Q4(1), Q1(1)] % x-koordinat i punkten Qk �r Qk(1)
yq=[Q1(2),Q2(2), Q3(2),Q4(2), Q1(2)] % y-koordinat i punkten Pk �r Pk(2)
%% Samma graf som ovan + tv� str�ckor fr�n origo.
% Linjen fr�n O till P1
x1=[0,P1(1)]
y1=[0,P1(2)]
% Linjen fr�n O till Q1
x2=[0,Q1(1)]
y2=[0,Q1(2)]

figure(1)
clf % rensar eventuella gamla grafer i figure(2)
fill(xp,yp,'b') % Ritar den ursprungliga kvadraten. 'b' st�r f�r "blue" f�rg
axis equal % samma skala p� x och y-axeln
axis([-6,6, -6,6])
grid on %rutn�t
hold on % beh�ller f�reg�ende figur
fill(xq,yq,'r') % Ritar den roterade kvadraten. 'r' st�r f�r "red" f�rg, 

plot(x1,y1) % Linjen fr�n O till P1
plot(x2,y2) % Linjen fr�n O till P2


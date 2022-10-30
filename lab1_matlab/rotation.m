
clear
clc
%% Rotationsmatrisen med vinkeln v:
v=2*pi/18
A=[cos(v), -sin(v); sin(v),cos(v) ]
%% Kvadratens hörnpunkter skriver vi som kolonnmatriser:
P1=[3;3]
P2=[4;3]
P3=[4;4]
P4=[3;4]
%% Vi roterar separat varje hörnpunkt (genom att multiplicera med matrisen A)
Q1=A*P1, Q2=A*P2, Q3=A*P3, Q4=A*P4
%% Vi plottar de två kvadraterna i en figur
% För att plotta en månghörning bestämmer vi två separata listor
% en lista med x-koordinater och
% en lista med y-koordinater
xp=[P1(1), P2(1), P3(1), P4(1),P1(1)] % xkoordinat i punkten Pk är Pk(1)
yp=[P1(2),P2(2), P3(2),P4(2) P1(2)] % ykoordinat i punkten Pk är Pk(2)
xq=[Q1(1),Q2(1), Q3(1),Q4(1), Q1(1)] % x-koordinat i punkten Qk är Qk(1)
yq=[Q1(2),Q2(2), Q3(2),Q4(2), Q1(2)] % y-koordinat i punkten Pk är Pk(2)
%% Samma graf som ovan + två sträckor från origo.
% Linjen från O till P1
x1=[0,P1(1)]
y1=[0,P1(2)]
% Linjen från O till Q1
x2=[0,Q1(1)]
y2=[0,Q1(2)]

figure(1)
clf % rensar eventuella gamla grafer i figure(2)
fill(xp,yp,'b') % Ritar den ursprungliga kvadraten. 'b' står för "blue" färg
axis equal % samma skala på x och y-axeln
axis([-6,6, -6,6])
grid on %rutnät
hold on % behåller föregående figur
fill(xq,yq,'r') % Ritar den roterade kvadraten. 'r' står för "red" färg, 

plot(x1,y1) % Linjen från O till P1
plot(x2,y2) % Linjen från O till P2


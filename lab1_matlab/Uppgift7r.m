%% A) G�r f�ljande exempel:
clc
clear
format compact % t�tare utskrift
syms x y z
ekv1=x+y+2*z==3
ekv2= 2*x+y+z==4
ekv3=2*x+y+3*z==4 % ett linj�rt ekv. system med exakt en l�sning
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% l�ser systemet
S=[X,Y,Z] % g�ra l�sningen som vektor
%%
syms x y
ekv1=x+2*y==5
ekv2= x+2*y==3 %Det �r uppenbart att systemet saknar l�sning
[X,Y]=solve(ekv1,ekv2,x,y)
S=[X,Y] % l�sningen
%%
syms x y
ekv1=x+2*y==5
ekv2= x+2*y==5 % ett linj�rt ekv. system med o�ndligt m�nga l�sningar
% notera att Matlab ger endast en av o�ndlig m�nga l�sningar.
[X,Y]=solve(ekv1,ekv2,x,y)
S=[X,Y] % g�ra l�sningen som vektor
%%
% Ett icke linj�rt ekv system med tv� l�sningar
syms x y
ekv1=x^2+y==5
ekv2= x^2-y==3 % ett ICKE linj�rt ekv. system
[X,Y]=solve(ekv1,ekv2,x,y)% l�ser systemet
S=[X,Y]
% tv� l�sningar: Varje par (X(k), Y(k) med samma index �r en l�sning

%% B) L�s f�ljande linj�ra ekvationssystem och ange antalet l�sningar som du f�r med Matlab
%%
% (a)
syms x y z
ekv1=x+2*y+2*z==9
ekv2=x+y+z==6
ekv3=x+y+2*z==7 %system med exakt en l�sning
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% l�ser systemet
S=[X,Y,Z] % g�ra l�sningen som vektor
%%
% (b)
syms x y z
ekv1=x+3*y+2*z==1
ekv2=x+4*y+z==4
ekv3=2*x+7*y+3*z==2 % systemet saknar l�sning
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% l�ser systemet
S=[X,Y,Z] % g�ra l�sningen som vektor
%%
% (c)
syms x y z
ekv1=2*x+y+z==2
ekv2=2*x+2*y+2*z==1
ekv3=4*x+3*y+3*z==3 % system med o�ndligt m�nga l�sningar
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% l�ser systemet
S=[X,Y,Z] % g�ra l�sningen som vektor

%% C) Best�m sk�rningen av planen

%%
% (c1)
syms x y z t
ekv1=x+y+z==3
ekv2=x+2*y+2*z==4
ekv3=z==t
% system med o�ndligt m�nga l�sningar
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% l�ser systemet
S=[X,Y,Z] % g�r sk�rningspunkterna som vektor

%%
% (c2) L�s samma problem med � papper och penna� och j�mf�r med (c1)
%
% x=2, y=1-t, z=t ... system med o�ndligt m�nga l�sningar
%
% Matlab ger endast en av o�ndlig m�nga l�sningar (t=0)

%% D) Best�m sk�rningen mellan planen och linjen

%%
syms x y z t
%    x + 2y + 2z = 4 och 3D linjen (x, y, z) = (2,4,4) + t(1,1,1)
ekv1 = x == 2+t
ekv2 = y == 4+t
ekv3 = z == 4+t
ekv4 = x + 2*y + 2*z == 4
[X,Y,Z,T]=solve(ekv1,ekv2,ekv3,ekv4,x,y,z,t);
S=[X,Y,Z] % g�r sk�rningspunkterna som vektor

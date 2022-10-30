%% A) Gör följande exempel:
clc
clear
format compact % tätare utskrift
syms x y z
ekv1=x+y+2*z==3
ekv2= 2*x+y+z==4
ekv3=2*x+y+3*z==4 % ett linjärt ekv. system med exakt en lösning
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% löser systemet
S=[X,Y,Z] % göra lösningen som vektor
%%
syms x y
ekv1=x+2*y==5
ekv2= x+2*y==3 %Det är uppenbart att systemet saknar lösning
[X,Y]=solve(ekv1,ekv2,x,y)
S=[X,Y] % lösningen
%%
syms x y
ekv1=x+2*y==5
ekv2= x+2*y==5 % ett linjärt ekv. system med oändligt många lösningar
% notera att Matlab ger endast en av oändlig många lösningar.
[X,Y]=solve(ekv1,ekv2,x,y)
S=[X,Y] % göra lösningen som vektor
%%
% Ett icke linjärt ekv system med två lösningar
syms x y
ekv1=x^2+y==5
ekv2= x^2-y==3 % ett ICKE linjärt ekv. system
[X,Y]=solve(ekv1,ekv2,x,y)% löser systemet
S=[X,Y]
% två lösningar: Varje par (X(k), Y(k) med samma index är en lösning

%% B) Lös följande linjära ekvationssystem och ange antalet lösningar som du får med Matlab
%%
% (a)
syms x y z
ekv1=x+2*y+2*z==9
ekv2=x+y+z==6
ekv3=x+y+2*z==7 %system med exakt en lösning
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% löser systemet
S=[X,Y,Z] % göra lösningen som vektor
%%
% (b)
syms x y z
ekv1=x+3*y+2*z==1
ekv2=x+4*y+z==4
ekv3=2*x+7*y+3*z==2 % systemet saknar lösning
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% löser systemet
S=[X,Y,Z] % göra lösningen som vektor
%%
% (c)
syms x y z
ekv1=2*x+y+z==2
ekv2=2*x+2*y+2*z==1
ekv3=4*x+3*y+3*z==3 % system med oändligt många lösningar
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% löser systemet
S=[X,Y,Z] % göra lösningen som vektor

%% C) Bestäm skärningen av planen

%%
% (c1)
syms x y z t
ekv1=x+y+z==3
ekv2=x+2*y+2*z==4
ekv3=z==t
% system med oändligt många lösningar
[X,Y,Z]=solve(ekv1,ekv2,ekv3,x,y,z)% löser systemet
S=[X,Y,Z] % gör skärningspunkterna som vektor

%%
% (c2) Lös samma problem med ” papper och penna” och jämför med (c1)
%
% x=2, y=1-t, z=t ... system med oändligt många lösningar
%
% Matlab ger endast en av oändlig många lösningar (t=0)

%% D) Bestäm skärningen mellan planen och linjen

%%
syms x y z t
%    x + 2y + 2z = 4 och 3D linjen (x, y, z) = (2,4,4) + t(1,1,1)
ekv1 = x == 2+t
ekv2 = y == 4+t
ekv3 = z == 4+t
ekv4 = x + 2*y + 2*z == 4
[X,Y,Z,T]=solve(ekv1,ekv2,ekv3,ekv4,x,y,z,t);
S=[X,Y,Z] % gör skärningspunkterna som vektor

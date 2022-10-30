%% A
clc
clear
format compact % t�tare utskrift
syms x y z % vi deklarerar att x, y och z �r symboliska variabler
f= (x^3+y^2+z)*x
% f blir ocks� en symbolisk variabel eftersom den definieras
% med hj�lp av x, y och z
f=expand(f) % utvecklar dvs " expanderar" f
f1=subs(f,x,10) % substituerar x=10 i f
f2=subs(f,[x,y,z],[10,5,-1]) % substituerar x=10 , y=5 och z=-1 i f
%%
syms x
g=(x^2+5*x+6)/(x+2) % definierar g som funktion av x
g1=simplify(g) % f�renklar g
h=sin(x)
h1=diff(h,x) % deriverar h
h2=int(h,x) % ber�knar ? h(x)dx
h3=int(h,x,0,pi) % ber�knar ? h(x)dx (fr�n 0 till pi)
%%
figure(1)
ezplot(h,[-10,10]) 
% ezplot (Easy to use function plotter) ritar grafen
% till symboliska funktionen h i intervallet [-10,10]
%%
figure(2)
F=sin(x^2+y^2)
ezsurf(F, [-1,1],[-2,2]) 
% Grafen till ytan F=sin(x^2+y^2) d�r -1<=x<=1 och -2<=y<=2
title('F=sin(x^2+y^2)')
xlabel('x-axeln')
ylabel('y-axeln ')
zlabel('F v�rden')


%% B 
%%
% L�t $f(x)=2x cos(3x+2)$
% Ber�kna $f'(x)$, Integral $f(x)dx$, Integral $f(x)dx$ (fr�n 0 till pi),
% samt plotta grafen till $f(x)$ f�r $-4<=x<=4$ 
 
clc
clear
format compact % t�tare utskrift
syms x % vi f�rklarar att x �r symbolisk variabel
f=2*x*cos(3*x+2)
f1=diff(f,x) % deriverar f
f2=int(f,x) % ber�knar ? f(x)dx
f3=int(f,x,0,pi) % ber�knar ? f(x)dx (fr�n 0 till pi)
figure(3)
% ritar grafen till symboliska funktionen f i intervallet [-4,4]
ezplot(f,[-4,4]) 
xlabel('x')
ylabel('f(x)')
grid on


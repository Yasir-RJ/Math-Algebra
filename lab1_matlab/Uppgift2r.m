%% A) ENKLA BER�KNINGAR
% Anm�rkning: Tv� procenttecken och blank d�refter i b�rjan av raden
% definierar ett nytt avsnitt ("section" )
% Detta �r anv�ndbart om man vill presentera (" publicera ") arbetet
% eller om man vill exekvera endast ett avsnitt.
clc % F�rklaring: clc= Clear Command Window ,
 % rensar kommandof�nstret
clear % F�rklaring: clear raderar alla variabler
format compact % t�tare utskrift , om man vill
p=5 % p tilldelas v�rdet 5
q=3
r1=10*p+2*q
a=1, b=2 % ( anv�nd a och b fr�n ditt personnummer)
m1=sin(2*a+3*b)+cos(a^2+ b^3)
m2=log(5.23) % ln(5.23)
m3=log10(11.56) % lg(11.56)
m4 = sqrt(a+b +23.8)
m5=abs(3*a-57)
m7=asin(a+0.5)
m8=acos(b+0.5)
m9=atan(a+1.23) % arctan(a+1.23) i radianer
m10=acot(a+1.23) % arccot(a+1.23)
m11=asind(0.5) % arcsin(0.5), svaret �r i grader (degrees)
m12=acosd(0.5)
m13=atand(1)
m14=acotd(0)
m15=atan2(b+3,23)
% atan2(y,x) ger den pol�ra koordinaten till punkten (x,y) i radianer.
% Resultat ligger i intervallet (-pi, pi]
% Notera att vi anger omv�nt ordning mellan x och y i kommandot atan2(y,x)
m16=atan2d(1,-1)
% atan2(y,x) ger den pol�ra koordinaten till punkten (x,y) i grader(degrees).
% Resultat ligger i intervallet (-180, 180]
% Notera att vi anger omv�nt ordning mellan x och y i kommandot atan2d(y,x)
m17=atan2d(-1,-1)
m17=atan2d(2,0)
m17=atan2d(0,-3)
s=' Jag studerar ' % s tilldelas text ' Jag studerar '
t= ' p� KTH '
v= [s,t]

%% B) VEKTORER (LISTOR) OCH MATRISER (TABELLER).
% Elementvisa operationer .* .^ ./
L=[328 462 235 124 123 145 654 132 234 221 333] % definierar en vektor
% (dvs, en numerisk lista)
max(L)
min(L)
L(3)
L(3) + 2*L(5)
A=[25 33 44 55; 11 21 91 41; 121 12 13 124] % en matris (=tabell)av typ 3x4.
A(2,3)
A(3,1)
A(1:2,1:4)
A(1:2,3:4)
K1=max(A) % ber�knar st�rsta element i varje kolonn
mA=max(max(A)) % ber�knar st�rsta element i den hela matrisen.
v=5:0.5:9
% F�rklaring: v=a:h:b skapar vektorn a, a+h, a+2h, a+3h, �.b
w=4:0.5:8
z=sin(w) % Anm�rkning: sin(w) till�mpas elementvis
 % Notera att z blir en vektor om w �r det.
f=v.*w % F�rklaring Operator .* st�r f�r elementvis multiplikation:
% Varje element i v multipliceras med motsvarande element i w. F�r plus och minus beh�vs ej operator f�r elementvis addition och subtraktion.
g=v.*v
h1=1./L
H2=L.^(-1)
k=v.^2
m=w.^3
n=2*v+3*w
p=cos(v)

%% C) N�GRA ENKLA PLOT-exempel
x=0:0.1:4*pi ;
% Om vi avslutar ett kommando med semikolon d� exekveras kommandot
% men resultat visas inte p� sk�rmen.
y=4*sin(x);
figure(1) % plottar grafen i f�nstret figure(1)
plot(x, y)
title('4sin(x)')
xlabel('x i radianer');
ylabel('Funktionens v�rde');
%%
figure(2) % plottar grafen i f�nstret figure(2)
t=0:0.1:6.28;
z=5*cos(t);
plot(t , z )
grid on % rutn�t
title('5cos(x)')
%% Flera grafer i samma koordinatsystem
figure(3)
% F�r att plotta flera grafer i samma koordinatsystem ( samma f�nster)
% anv�nder vi kommandot "hold on"
x=-3:0.1:3; % Skapar en lista med x-v�rden.
y=3*x; % Ber�knar tillh�rande y-v�rden.
z=sin(x); % Ber�knar tillh�rande z-v�rden.
plot(x,y)
hold on
plot(x,z)
hold off
%% Ett exempel p� en parametriserad kurva
clc
clear
t=0:0.01:2*pi;
x=4*cos(t);
y=3*sin(t);
figure(4)
plot(x,y)
grid on
axis equal
title('Ellipsen med halvaxlarna 4 och 3')
%% Ett exempel p� "stem plot"
x = 0:0.1:3;
y = sin(x.^2).*exp(-x);
figure(5)
stem(x,y)
xlabel('Tid')
ylabel('Signal')

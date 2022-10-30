%% Uppgift 3.
clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret

%% 3.1 funktion plottning
% Plotta grafen till f(x) i intervallet b ? 4 ? x ? b + 2
b=6; % mitt personnummer
syms x % Deklarera symbolisk variabeln x
f=exp(-(x-b-1)^2) % Definiera funktion f(x)
figure(1)
ezplot(f,[b-4, b+2]) % Ritningar f(x) �ver b ? 4 ? x ? b + 2
grid on % L�gger stora rutn�tslinjer

%% 3.2 arean
% Ber�kna (numeriskt) arean av det omr�de som definieras av  b?4 ? x ? b+2, 0?y?f(x)
A=int(f,b-4,b+2); % integral f(x)dx fr�n b-4 till b+2
A=double(A) % numeriska v�rdet av A

%% 3.3 (a) volymen kring x-axeln
% Ber�kna (numeriskt) volymen av den kropp som uppst�r vid rotation
% av omr�det  b?4 ? x ? b+2, 0?y?f(x)  kring x-axeln
Vx=pi*int(f^2,b-4,b+2); % rotation av omr�det kring x-axeln
Vx=double(Vx) % numeriska v�rdet av Vx



%% 3.3 (b) volymen kring y-axeln
% Ber�kna (numeriskt) volymen av den kropp som uppst�r vid rotation
% av omr�det  b?4 ? x ? b+2, 0?y?f(x)  kring y-axeln
Vy=2*pi*int(x*f,b-4,b+2); % rotation av omr�det kring y-axeln
Vy=double(Vy) % numeriska v�rdet av Vy

%% 3.4 l�ngden av kurvan
%  Ber�kna (numeriskt) l�ngden av den del av kurvan
fd=diff(f,x) % F�rsta derivatan f med avseende p� x
L=int(sqrt(1+fd^2),b-4,b+2); % integral fr�n b-4 till b+2
L=double(L) % numeriska v�rdet av L

%% Uppgift 3.
clear % Rensa variabler och funktioner från minnet
clc % Rensa kommandofönstret

%% 3.1 funktion plottning
% Plotta grafen till f(x) i intervallet b ? 4 ? x ? b + 2
b=6; % mitt personnummer
syms x % Deklarera symbolisk variabeln x
f=exp(-(x-b-1)^2) % Definiera funktion f(x)
figure(1)
ezplot(f,[b-4, b+2]) % Ritningar f(x) över b ? 4 ? x ? b + 2
grid on % Lägger stora rutnätslinjer

%% 3.2 arean
% Beräkna (numeriskt) arean av det område som definieras av  b?4 ? x ? b+2, 0?y?f(x)
A=int(f,b-4,b+2); % integral f(x)dx från b-4 till b+2
A=double(A) % numeriska värdet av A

%% 3.3 (a) volymen kring x-axeln
% Beräkna (numeriskt) volymen av den kropp som uppstår vid rotation
% av området  b?4 ? x ? b+2, 0?y?f(x)  kring x-axeln
Vx=pi*int(f^2,b-4,b+2); % rotation av området kring x-axeln
Vx=double(Vx) % numeriska värdet av Vx



%% 3.3 (b) volymen kring y-axeln
% Beräkna (numeriskt) volymen av den kropp som uppstår vid rotation
% av området  b?4 ? x ? b+2, 0?y?f(x)  kring y-axeln
Vy=2*pi*int(x*f,b-4,b+2); % rotation av området kring y-axeln
Vy=double(Vy) % numeriska värdet av Vy

%% 3.4 längden av kurvan
%  Beräkna (numeriskt) längden av den del av kurvan
fd=diff(f,x) % Första derivatan f med avseende på x
L=int(sqrt(1+fd^2),b-4,b+2); % integral från b-4 till b+2
L=double(L) % numeriska värdet av L

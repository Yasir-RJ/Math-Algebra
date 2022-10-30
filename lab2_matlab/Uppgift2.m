%% Uppgift 2.
clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret

%% syms var1 var2 deklarerar symboliska variabler i Matlab
syms x % Deklarera symbolisk variabeln x
f=(x^2+1)/x % Definiera funktion f(x)
y5=subs(f,x,5) % Ers�tt x = 5 i funktion f
ezplot(f,[- 5, 5]) % Ritningar f(x) �ver -5<x<5
solve(f==0,x) % L�s funktion f (x) f�r root x

%% DERIVATOR
g1=diff(f,x) % F�rsta derivatan f med avseende p� x
g2=diff(f,x,2) % Andra derivatan f med avseende p� x
g3=diff(f,x,3) % Tredje derivatetan f med avseende p� x
solve(g1==2,x) % L�sa funktionen g1(x) = 2 f�r root x

%% INTEGRALER
integral1=int(f) % obest�md integral fdx
I1=int(f,3,5) % integral f(x)dx fr�n 3 till 5
I1b=double(I1) % numeriska v�rdet av I1
g= sqrt(sin(x)+exp(x)) 
integral2=int(g) % obest�md integral gdx
I2=int(sqrt(sin(x)+exp(x)),0,1) % integralen kan inte ber�knas exakt,
% (matlab upprepar uttrycket f�r integralen utan ber�kning)
% medan samma integral kan ber�knas numerisk
I2num=double(I2) % med kommandot double
I2num=double(int(sqrt(sin(x)+exp(x)),0,1)) % eller med direkt numerisk ber�kning


%% GR�NSV�RDEN
L1=limit(f,x,inf) % Tar gr�nsen f�r det symboliska uttrycket f som x -> inf
L2=limit(f,x,-inf) % eller x -> -inf
L3=limit(f,x,0,'left') % eller x -> 0, v�nster riktning f�r en ensidig gr�ns
L4=limit(f,x,0,'right') % eller x -> 0, r�tt riktning f�r en ensidig gr�ns
L5=limit(f,x,-1,'left') % eller x -> -1, v�nster riktning f�r en ensidig gr�ns
L6=limit(f,x,-1,'right') % eller x -> -1, r�tt riktning f�r en ensidig gr�ns


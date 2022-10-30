%% Uppgift 2.
clear % Rensa variabler och funktioner från minnet
clc % Rensa kommandofönstret

%% syms var1 var2 deklarerar symboliska variabler i Matlab
syms x % Deklarera symbolisk variabeln x
f=(x^2+1)/x % Definiera funktion f(x)
y5=subs(f,x,5) % Ersätt x = 5 i funktion f
ezplot(f,[- 5, 5]) % Ritningar f(x) över -5<x<5
solve(f==0,x) % Lös funktion f (x) för root x

%% DERIVATOR
g1=diff(f,x) % Första derivatan f med avseende på x
g2=diff(f,x,2) % Andra derivatan f med avseende på x
g3=diff(f,x,3) % Tredje derivatetan f med avseende på x
solve(g1==2,x) % Lösa funktionen g1(x) = 2 för root x

%% INTEGRALER
integral1=int(f) % obestämd integral fdx
I1=int(f,3,5) % integral f(x)dx från 3 till 5
I1b=double(I1) % numeriska värdet av I1
g= sqrt(sin(x)+exp(x)) 
integral2=int(g) % obestämd integral gdx
I2=int(sqrt(sin(x)+exp(x)),0,1) % integralen kan inte beräknas exakt,
% (matlab upprepar uttrycket för integralen utan beräkning)
% medan samma integral kan beräknas numerisk
I2num=double(I2) % med kommandot double
I2num=double(int(sqrt(sin(x)+exp(x)),0,1)) % eller med direkt numerisk beräkning


%% GRÄNSVÄRDEN
L1=limit(f,x,inf) % Tar gränsen för det symboliska uttrycket f som x -> inf
L2=limit(f,x,-inf) % eller x -> -inf
L3=limit(f,x,0,'left') % eller x -> 0, vänster riktning för en ensidig gräns
L4=limit(f,x,0,'right') % eller x -> 0, rätt riktning för en ensidig gräns
L5=limit(f,x,-1,'left') % eller x -> -1, vänster riktning för en ensidig gräns
L6=limit(f,x,-1,'right') % eller x -> -1, rätt riktning för en ensidig gräns


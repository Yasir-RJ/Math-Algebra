%% Uppgift 1.
%% 1A/ Fyra subplots

clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret
figure(1) % Skapa figurf�nster
x=1:0.1:10; % �ndra variabel x fr�n 1 till 10 steg 0,1
y1=5*x.^3-3*x.^2+2*x+1.2; % Definiera funktion y1(x)
subplot(2,2,1) % Skapa axlar i kaklade positioner (1 fr�n 4)
plot(x,y1) % plottar vektor y1 kontra vektor x
title('y1=5x^3- 3x^2+ 2x+ 1.2'); % Till�gger titel p� toppen
subplot(2,2,2) % Skapa axlar i kaklade positioner (2 fr�n 4)
x=1:0.1:10;
y2=sin((5*x.^2-2*x)./x); % Definiera en annan funktion y2(x)
plot(x,y2,'r') % plottar vektor y2 kontra vektor x med r�d f�rg
title(' y2=sin((2x^2- 2x)/x)');
subplot(2,2,3) % Skapa axlar i kaklade positioner (3 fr�n 4)
x=1:0.5:10;
z1=cos((3*x.^2+1)./x); % Definiera en annan funktion z1(x)
plot(x,z1,' g s -.') % plottar vektor z1 kontra vektor x med gr�n f�rg och kvadratisk form
title(' z1=cos((3x^2+1)/x)');
subplot(2,2,4) % Skapa axlar i kaklade positioner (4 fr�n 4)
x=-5:0.1:5;
z2=2*x.^2-1; % Definiera en annan funktion z2(x)
plot(x,z2) % plottar vektor z2 kontra vektor x
title('z2=2x^2- 1');

%% 1B/ Tv� subplots

clear % Rensa variabler och funktioner fr�n minnet
clc % Rensa kommandof�nstret
figure(2) % Skapa figurf�nster
x=0:0.1:2*pi; % �ndra variabel x fr�n 0 till 2*pi steg 0,1

y1=2*sin(x)+3*cos(10*x); % Definiera funktion y1(x)
subplot(1,2,1) % Skapa axlar i kaklade positioner (1 fr�n 2)
plot(x,y1,'g') % plottar vektor y1 kontra vektor x med gr�n f�rg
grid on % L�gger stora rutn�tslinjer
title('y1=2sin(x)+3cos(10x)'); % Till�gger titel p� toppen
xlabel('x i radianer'); % l�gger till text bredvid X-axeln p� den aktuella axeln
ylabel('y1 v�rde'); % l�gger till text bredvid Y-axeln p� den aktuella axeln

y2=3*sin(2*x); % Definiera en annan funktion y2(x)
subplot(1,2,2) % Skapa axlar i kaklade positioner (2 fr�n 2)
plot(x,y2,'r') % plottar vektor y2 kontra vektor x med r�d f�rg
grid on
title(' y2=3sin(2x)');
xlabel('x i radianer');
ylabel('y2 v�rde');



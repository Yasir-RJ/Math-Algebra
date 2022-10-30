%% A)  Best�m bilderna av punkterna P=(2, 2), Q= (3, a+4), R=(5,3)
% (beteckna bilderna med K,L och M) 
a=6; % a ... mitt personnummer
% rotationen vinkeln v kring origo
v=2*pi/3;
% Rotationsmatrisen med vinkeln v
A=[cos(v) -sin(v);sin(v) cos(v)]
% triangelns h�rnpunkter som kolumnmatriser
P=[2 2]', Q=[3 a+4]', R=[5 3]'
%%
% Vi roterar separat varje h�rnpunkt (genom att multiplicera med matrisen A)
K=A*P, L=A*Q, M=A*R

%% B)  Rita trianglarna PQR och KLM i samma koordinatsystem.
% plotta de tv� trianglarna i samma figur.
% F�r att plotta en m�ngh�rning best�mmer vi tv� separata listor

% en lista med x-koordinater f�r PQR
xPQR=[P(1), Q(1), R(1), P(1)]
% en lista med y-koordinater f�r PQR
yPQR=[P(2), Q(2), R(2), P(2)]

% en lista med x-koordinater f�r KLM
xKLM=[K(1), L(1), M(1), K(1)]
% en lista med y-koordinater f�r KLM
yKLM=[K(2), L(2), M(2), K(2)]
%%
figure(1)
clf 
% Ritar den ursprungliga triangeln i gr�n f�rg
fill(xPQR,yPQR,'g') 
axis equal % samma skala p� x och y-axeln
axis([-12,12, -12,12])
grid on %rutn�t
hold on % beh�ller f�reg�ende figur
% Ritar den roterade triangeln i r�d f�rg
fill(xKLM,yKLM,'r')
hold on
% Linjen fr�n O till P
x1=[0,P(1)];
y1=[0,P(2)];
% Linjen fr�n O till K
x2=[0,K(1)];
y2=[0,K(2)];
plot(x1,y1,'--g') % Linjen (dash)fr�n O till P
plot(x2,y2,'--r') % Linjen (dash)fr�n O till K


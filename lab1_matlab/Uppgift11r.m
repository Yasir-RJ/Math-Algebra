%% A)  Bestäm bilderna av punkterna P=(2, 2), Q= (3, a+4), R=(5,3)
% (beteckna bilderna med K,L och M) 
a=6; % a ... mitt personnummer
% rotationen vinkeln v kring origo
v=2*pi/3;
% Rotationsmatrisen med vinkeln v
A=[cos(v) -sin(v);sin(v) cos(v)]
% triangelns hörnpunkter som kolumnmatriser
P=[2 2]', Q=[3 a+4]', R=[5 3]'
%%
% Vi roterar separat varje hörnpunkt (genom att multiplicera med matrisen A)
K=A*P, L=A*Q, M=A*R

%% B)  Rita trianglarna PQR och KLM i samma koordinatsystem.
% plotta de två trianglarna i samma figur.
% För att plotta en månghörning bestämmer vi två separata listor

% en lista med x-koordinater för PQR
xPQR=[P(1), Q(1), R(1), P(1)]
% en lista med y-koordinater för PQR
yPQR=[P(2), Q(2), R(2), P(2)]

% en lista med x-koordinater för KLM
xKLM=[K(1), L(1), M(1), K(1)]
% en lista med y-koordinater för KLM
yKLM=[K(2), L(2), M(2), K(2)]
%%
figure(1)
clf 
% Ritar den ursprungliga triangeln i grön färg
fill(xPQR,yPQR,'g') 
axis equal % samma skala på x och y-axeln
axis([-12,12, -12,12])
grid on %rutnät
hold on % behåller föregående figur
% Ritar den roterade triangeln i röd färg
fill(xKLM,yKLM,'r')
hold on
% Linjen från O till P
x1=[0,P(1)];
y1=[0,P(2)];
% Linjen från O till K
x2=[0,K(1)];
y2=[0,K(2)];
plot(x1,y1,'--g') % Linjen (dash)från O till P
plot(x2,y2,'--r') % Linjen (dash)från O till K


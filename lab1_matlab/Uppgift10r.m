%% A) Best�m vektorerna AB, AC, AD 
a=6; % a ... mitt personnummer
A=[1,2,2]
B=[a+2,4,3]
C=[a+4,8,4]
D=[a+3,5,5]
u=B-A % u=vector AB
v=C-A % v=vector AC
w=D-A % w=vector AD

%% B) Ber�kna vinkeln mellan v och w
% ( i b�de radianer och grader) 

CosAngle = dot(v,w)/(norm(v)*norm(w));
AngleInRadian = acos(CosAngle) % i radianer
AngleInDegrees = acosd(CosAngle) % i grader

%% c) Ber�kna arean av triangeln ABC
% Arean av triangeln �r 1/2 av parallellogramarean = 1/2 |uxv|
% (parallellogramarean �r lika med vektorprodukten f�r de tv� vektorerna)
N = cross(u,v) % ber�kna korsprodukten (normal vektor) f�r vektorerna u och v
AreanAvTriangelnABC = 0.5*norm(N)

%% d) Ber�kna volymen av pyramiden ABCD

%% Metod 1: volymen av pyramiden ABCD = (1/6)|uxv.w| 
volymen1=(1/6)*(norm(dot(cross(u,v),w)))

%% Metod 2: volymen av pyramiden ABCD = (1/3) * (arean av triangeln ABC ) * (normalt avst�nd mellan punkt D och planet ABC)
syms x y z
P = [x,y,z];
% Hitta planekvationen f�r triangeln ABC
planefunction = dot(N, P-A);
% Hitta det normalt avst�ndet mellan punkt D och planet ABC
distance=double(subs(planefunction,[x,y,z],D)/norm(N));
volymen2=(1/3) * AreanAvTriangelnABC * distance




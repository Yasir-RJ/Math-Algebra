%% i) Beräkna 
% A(3,2)+B(2,3), A+B, AB, BA , A', A^5
% det(A), det(3A+2B) och inv(A+B)
a=6; % a och b ... mitt personnummer
b=6;
A=[1 1 2 3-a;-1 -1 a-3 0;-1 -1 1 b-4;2 4 2 4] % Definiera matris A
B=[0 1 1 a;1 2 3 1;1 1 1 4;0 0 4 4] % Definiera matris B
%%
A(3,2)+B(2,3)
%%
A+B
%%
A*B
%%
B*A
%%
A'
%%
A^5
%%
det(A)
%%
det(3*A+2*B)
%%
if det(A+B)~=0
    inv(A+B)
else
    fprintf('(A+B) är inte inverterbar')
end

%% ii) Bestäm X ur matrisekvationen AX = C–BX
% låt C = [1;2;3;4]

% AX = C–BX  

% AX+BX = C  

% (A+B)*X = C  

% inv(A+B)*(A+B)*X = inv(A+B)*C  

% X = inv(A+B)*C  

C = [1;2;3;4];
if det(A+B)~=0
    fprintf('AX = C–BX\n')
    fprintf('X = ')
    inv(A+B)*C      
else
    fprintf('(A+B) är inte inverterbar')
end







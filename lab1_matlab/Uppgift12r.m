%% Bestäm egenvärden och motsvarande egenvektorer till matris A och B
% (i) 
A=[2 4;1 2] % matris typ 2x2
[V D]=eig(A) % hitta egenvärden och egenvektorer för A
%%
% elementen på diagonalen i D är matrisens egenvärden.
% Kolonner i matrisen i V är matrisens (normerade) egenvektorer
eigenvalue1=D(1,1), eigenvector1=V(1:2,1)
eigenvalue2=D(2,2), eigenvector2=V(1:2,2)

%%
% (ii)
B=[0 2 0;-2 4 0;2 4 4] % matris A typ 3x3
[V D]=eig(B) % hitta egenvärden och egenvektorer för B
%%
eigenvalue1=D(1,1), eigenvector1=V(1:3,1)
eigenvalue2=D(2,2), eigenvector2=V(1:3,2)
eigenvalue3=D(3,3), eigenvector3=V(1:3,3)




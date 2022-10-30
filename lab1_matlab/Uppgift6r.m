%% 
clc
clear
format compact % tätare utskrift
syms x p q r
ekv1=p*x+q==r
sol1=solve(ekv1,x) % löser ekv1 och ger namn sol1 till lösningen
%%
syms x
ekv2=x^2+x+1==0
sol2=solve(ekv2,x) % en andragradsekvation har 2 lösningar
%%
syms x
ekv2=x^3+8==0
sol3=solve(ekv2,x) % en tredjegradsekvation har 3 lösningar
%%
% Vi har fått tre lösningar som ligger i listan (vektor) sol3.
% Lösningarna kan vi plocka på följande sätt:
x1=sol3(1), x2=sol3(2), x3 = sol3(3)
% Med hjälp av double kan vi få det numeriska värdet av ett tal, t. ex
x2n=double(x2) %ger nummeriska värdet av x2

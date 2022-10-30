%% 
clc
clear
format compact % t�tare utskrift
syms x p q r
ekv1=p*x+q==r
sol1=solve(ekv1,x) % l�ser ekv1 och ger namn sol1 till l�sningen
%%
syms x
ekv2=x^2+x+1==0
sol2=solve(ekv2,x) % en andragradsekvation har 2 l�sningar
%%
syms x
ekv2=x^3+8==0
sol3=solve(ekv2,x) % en tredjegradsekvation har 3 l�sningar
%%
% Vi har f�tt tre l�sningar som ligger i listan (vektor) sol3.
% L�sningarna kan vi plocka p� f�ljande s�tt:
x1=sol3(1), x2=sol3(2), x3 = sol3(3)
% Med hj�lp av double kan vi f� det numeriska v�rdet av ett tal, t. ex
x2n=double(x2) %ger nummeriska v�rdet av x2

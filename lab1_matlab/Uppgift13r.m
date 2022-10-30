%%  Utskriftsformat
% Läs hjälpavsnitt i Matlab om fprintf och därefter förklara följande utskriftsformat:
clc
clear
%% Några exempel med fprintf
R =23.456789876
A=R^2*pi
fprintf('Arean är lika med %20.2f \n',A)
% ovanstående kommandot blandar text och tal i utskriften.
% Skriver ut A som float med 2 decimaler och totalt 20 platser
% \n betyder att utskrift forsätter i en ny rad
%% 
fprintf('Arean är lika med %14.8E \n',A)
% Exponentiell notering (med versaler E)
% Skriver ut A med 8 decimaler och totalt 14 platser
%%
fprintf('Om radien R är lika med %8.3f så är cirkelns area lika med %8.3f\n',R,A)
% Skriver ut R och A som float med 3 decimaler och totalt 8 platser
%%
fprintf(' Radien R= %10.3E. Arean= %10.3E \n',R,A)
% Skriver ut R och A som Exponentiell notering med 3 decimaler och totalt 10 platser
%% Komplexa tal och fprintf
z = 2.3000 - 3.4000i;
fprintf( 'z= %s \n' , num2str(z) ) 
% num2str(z): omvandlar z till textvariabel (string)


%%   Extra uppgift. ( Endast för de som inte redovisar i tid uppgifter 1-13) 
% Kommandot randi([imin, imax],m,n) genererar en matris av typ m × n
% med slumpvis valda tal som ligger mellan imin och imax.
%% A) Skapa en matris med följande kommandon
% använd dina parametrar a och b
a=6
b=6 
A=randi([120+2*a, 210+3*b],44,55) % genererar matris A av typ 44×55

%% B) Bestäm summan av alla tal A(j,k) som uppfyller 170 < A(j,k) < 200
sum=0; % Initiera summeringen
count=0; % Initiera talräknaren
for j=1:44 % slinga med 44 rader
    for k=1:55 % slinga med 55 kolumner
        if A(j,k)>170 && A(j,k)<200 % uppfylla villkoret?
            sum=sum+A(j,k); % Ja, lägg detta element till summering,
            count=count+1; % och öka antalet med 1
        end
    end
end
% skriva ut summeringen av element
fprintf("Summan= %d\n",sum)

%% C) Hur många sådana tal finns? 
% skriva ut antalet av dessa element
fprintf("Antalet= %d\n",count)

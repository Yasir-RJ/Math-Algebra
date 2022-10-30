%% A) Beräkna summan av alla tal R(i) som uppfyller $110 < R(i) <= 180$.

clc % (Clear Command Window)
clear
a=1; % du ska ange a-värdet från ditt personnummer
b=2; % du ska ange b-värdet från ditt personnummer
N=50+a;
R=randi([95+a, 259+b],1,N); % N slumpvalda heltal mellan 95+a och 259+b.

sum=0;
for i = 1:N
 if (R(i)>110) && (R(i)<=180)
    sum=sum+R(i); % summan av alla tal R(i) som uppfyller 110 < R(i) <= 180
 end
end
sum % skriva ut sum


%% B) Beräkna summan av alla tal i R som är delbara med 12.
sum=0;
for i = 1:N
 if rem(R(i),12) == 0
    sum=sum+R(i); % summan av alla tal i R som är delbara med 12
 end
end
sum % skriva ut sum


%% C) Hur många sådana tal (delbara med 12) finns i R?.
tal=0;
for i = 1:N
 if rem(R(i),12) == 0
    tal=tal+1; % räkningen av alla nummer som kan delas med 12
 end
end
tal % skriva ut tal


%% D)  Exekvera och förklara följande plot -kommandot :hist( R,5).

frekv = hist (R, 5) % Sorterar R i 5 lika fördelade intervall
figure(1)
hist( R,5) % Plotta ett histogram av R





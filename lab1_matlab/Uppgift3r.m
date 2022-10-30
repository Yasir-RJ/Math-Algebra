%% A) Ange ett eget exempel med for … end slinga (loop).
% Denna slinga producerar en vektor med längden 10.
x = []; % Tom vektor
for i = 1:10
 x = [x, i^2]; % kvadrat av nummer 1-10
end
x % skriva ut vektor x

%% B) Ange ett eget exempel med if…end satsen.
% Positivt eller negativt tal.
n=9
if n>0
    disp("talet är positivt")
else
    disp("talet är negativt")
end

%% C) Ange ett eget exempel med kommandot while.
% Visa det minsta icke-negativa heltalet n så att $2^n > 1e9$
n = 0;
while 2^n <= 1e9
 n = n + 1 ;
end
n % skriva ut n

%% D) Ange ett eget exempel med kommandot rand.
% skapa och rita 1x10 vektor av slumptal mellan 0 och 1
y = rand(1,10) % generera 1x10 vektor av slumptal
x=1:1:10;
figure(1) 
stem(x,y) % rita x och y
xlabel('X') % x-axeln namn
ylabel('Y') % y-axeln namn

%% E) Ange ett eget exempel med kommandot randi.

grade = randi(100) % Generera heltal slumptal mellan 1 och 100
if grade < 50
    disp('F')
elseif grade < 60
    disp('E')
elseif grade < 70
    disp('D')
elseif grade < 80
    disp('C')
elseif grade < 90
    disp('B')
else
    disp('A')
end

%% F) Ange ett eget exempel med kommandot rem
% Kontrollera om antalet är jämnt eller udda.
n=9
if rem(n,2) == 0  % om resten är 0
    disp("jämnt")
else
    disp("udda")
end

%% G) Använd for...end slinga för att beräkna summan 
% (k:3-15) $(3*k^2+2*k+10)/(k^2+3*k-2)$ 
sum=0; % summeringen är 0 i början
for k = 3:15  % slinga från 3 till 15
 sum=sum+(3*k^2+2*k+10)/(k^2+3*k-2); % utvärdera summeringen
end
sum % skriva ut summeringen


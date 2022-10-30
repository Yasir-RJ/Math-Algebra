%% A) Ange ett eget exempel med for � end slinga (loop).
% Denna slinga producerar en vektor med l�ngden 10.
x = []; % Tom vektor
for i = 1:10
 x = [x, i^2]; % kvadrat av nummer 1-10
end
x % skriva ut vektor x

%% B) Ange ett eget exempel med if�end satsen.
% Positivt eller negativt tal.
n=9
if n>0
    disp("talet �r positivt")
else
    disp("talet �r negativt")
end

%% C) Ange ett eget exempel med kommandot while.
% Visa det minsta icke-negativa heltalet n s� att $2^n > 1e9$
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
% Kontrollera om antalet �r j�mnt eller udda.
n=9
if rem(n,2) == 0  % om resten �r 0
    disp("j�mnt")
else
    disp("udda")
end

%% G) Anv�nd for...end slinga f�r att ber�kna summan 
% (k:3-15) $(3*k^2+2*k+10)/(k^2+3*k-2)$ 
sum=0; % summeringen �r 0 i b�rjan
for k = 3:15  % slinga fr�n 3 till 15
 sum=sum+(3*k^2+2*k+10)/(k^2+3*k-2); % utv�rdera summeringen
end
sum % skriva ut summeringen


T = 2; %perioada in secunde
F = 1/T; %frecventa semnalului
t = 0:0.002:1; %vectorul pentru timp cu o rezolutie de 0.002 s = 2 ms
x = square(2*pi*F*t, 25); %functia square genereaza un semnal cu factor de 
                          % umplere de 25%
x = reduce_amp(x); %functie pentru scadere amplitudinii maxime la jumatate

plot(t,x), grid;
axis([0 1 -2 2]);


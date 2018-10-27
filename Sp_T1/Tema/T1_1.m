T = 2; %perioada in secunde
F = 1/T; %frecventa semnalului
t = 0:0.002:5; %vectorul pentru timp cu o rezolutie de 0.002 s = 2 ms
x = square(2*pi*F*t, 25); %functia square genereaza un semnal cu factor de 
                          % umplere de 25%
x = reduce_amp(x); %functie pentru scadere amplitudinii maxime la jumatate

subplot(3,1,1),plot(t,x,'.-'), grid, title('Rezolutie = 2ms');


t = 0:0.02:5;
x = square(2*pi*F*t, 25);
x = reduce_amp(x);

subplot(3,1,2),plot(t,x,'.-'),grid, title('Rezolutie = 20ms');

t = 0:0.2:5;
x = square(2*pi*F*t, 25);
x = reduce_amp(x);

subplot(3,1,3),plot(t,x, '.-'),grid, title('Rezolutie = 200ms');

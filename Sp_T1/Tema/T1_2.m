T = 5; %perioada semnalului de 5 secunde
F = 1/T; %frecventa semnalului

t = 0:0.002:10; %vectorul timp de 10 secunde cu o rezolutie de 2 ms
x = -0.5 + 1.5*sawtooth(2*pi*F*t,3/5); %functia pentru generarea semnalului
                                       %din calculele cu panta de 1V/s => o
                                       %componenta continua de -0.5 si un
                                       %semnal triunghiular de 
                                       %amplitudine -0.5 cu varful la 3/5*T
subplot(3,1,1),plot(t,x),grid,title('Rezolutie 2ms');

t = 0:0.02:10; %rezolutie de 20ms
x = -0.5 + 1.5*sawtooth(2*pi*F*t,3/5);
subplot(3,1,2),plot(t,x),grid,title('Rezolutie 20ms');

t = 0:0.2:10; %rezolutie de 200ms
x = -0.5 + 1.5*sawtooth(2*pi*F*t,3/5);
subplot(3,1,3),plot(t,x),grid,title('Rezolutie 200ms');


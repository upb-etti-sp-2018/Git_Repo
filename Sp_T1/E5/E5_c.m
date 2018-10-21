% Generati un semnal cosinusoidal de frecventa F = 20 Hz, reprezentat
% cu culoare rosie pe acelasi grafic peste semnalul sinusoidal

% F = 20 Hz => t = 1/20 = 0.05; => un pas termporar < 0.05 

Fs = 50;  %frecventa semnalului sinusoidal
Fc = 20;  %frecventa semnalului cosinusoidal

t = 0:0.001:0.2; %ales potrivit pentru ambele frecvente

s = 2*sin(2*pi*Fs*t);
c = 2*cos(2*pi*Fc*t); % am ales amplitudinea asemenea semnalului sinusoidal

plot(t,s),grid;
hold on;
plot(t,c,'r'),grid;
hold off;

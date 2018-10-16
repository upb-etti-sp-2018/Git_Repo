% Modificati pasul de variatie a variabilei t la 0.01 si apoi la 0.0002.


F = 50;
t=0:0.01:0.2;
s = 2*sin(2*pi*F*t);

subplot(2,1,1),plot(t,s,'.-'),xlabel("pas:0.01");

t=0:0.0002:0.2;
s = 2*sin(2*pi*F*t);

subplot(2,1,2),plot(t,s,'.-'),xlabel("pas:0.0002");

% avand in vedere frecventa semnalului F=50Hz => o variatie a semnalului
% de 1/50=0.02; Alegand pasul temporar de 0.01 este mai mare decat 0.02
% in concluzie pasul variabilei temporare trebuie ales mai mic decat variatia
% semnalului (in cazul semnalului s, mai mic de 0.02); 
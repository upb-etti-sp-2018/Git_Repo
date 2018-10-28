t = 0:0.002:10; %rezolutie de 2ms
x = 0.8*sin(2*pi*F*t);
subplot(3,2,3),plot(t,x),axis([0 10 -1 1]),grid,title('Semnal neredresat');

x = red_mono(x);
subplot(3,2,2),plot(t,x),axis([0 10 -1 1]),grid,title('Rezolutie 2ms');

t = 0:0.02:10; %rezolutie de 20ms
x = 0.8*sin(2*pi*F*t);
x = red_mono(x);
subplot(3,2,4),plot(t,x),grid,axis([0 10 -1 1]),title('Rezolutie 20ms');

t = 0:0.2:10; %rezolutie de 200ms
x = 0.8*sin(2*pi*F*t);
x = red_mono(x);
subplot(3,2,6),plot(t,x),axis([0 10 -1 1]),grid,title('Rezolutie 200ms');

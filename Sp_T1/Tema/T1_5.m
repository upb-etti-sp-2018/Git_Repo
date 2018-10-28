T = 4;
F = 1/T;

t = 0:0.002:8;
x = 1.5*sin(2*pi*F*t);
subplot(3,2,3),plot(t,x),grid,title('Semnal initial'),axis([0 8 -2 2]);
x = red_da(x);
subplot(3,2,2),plot(t,x),grid,title('Rezolutie 2ms'),axis([0 8 -2 2]);

t = 0:0.02:8;
x = 1.5*sin(2*pi*F*t);
x = red_da(x);
subplot(3,2,4),plot(t,x),grid,title('Rezolutie 20ms'),axis([0 8 -2 2]);

t = 0:0.2:8;
x = 1.5*sin(2*pi*F*t);
x = red_da(x);
subplot(3,2,6),plot(t,x),grid,title('Rezolutie 200ms'),axis([0 8 -2 2]);
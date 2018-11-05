n=-15:0.1:25;
x1=sin(pi*n/17);
subplot(2,1,1);
plot(n,x1)
hold on;
n=0:0.1:50;
x2=cos(pi*n/(sqrt(23)));
hold off
subplot(2,1,2)
plot(n,x2)
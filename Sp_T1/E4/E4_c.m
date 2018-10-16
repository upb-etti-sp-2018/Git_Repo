n1 = -15:25;
x1 = sin( (pi/17)*n1 );

n2 = 0:50;
x2 = cos( (pi/sqrt(23))*n2 );

figure(1)

plot(n1,x1),xlabel("n1"),ylabel("sin")
hold on
plot(n2,x2),xlabel("n2"),ylabel("cos")
hold off

figure(2)

subplot(1,2,1),plot(n1,x1),xlabel("n1"),ylabel("sin")
subplot(1,2,2),plot(n2,x2),xlabel("n2"),ylabel("cos")
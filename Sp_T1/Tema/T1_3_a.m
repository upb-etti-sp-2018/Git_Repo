Ts = 50e-3; % 50 ms timp de esantionare(rezolutie)
T = 0.25;
v = [-1,1]; % 2 nivele a cate 0.25s fiecare => timp = 0.5s
l = length(v);
v = liniarizare(v,T,Ts);
t = linspace(0,l*0.25e-3,l*T/Ts);

plot(t,v),grid;
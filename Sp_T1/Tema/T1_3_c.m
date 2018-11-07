Ts = 5e-3; % 5 ms timp de esantionare(rezolutie)
T = 0.25;
v = [-5,-3,-1,1,3,5]; % 6 nivele a cate 0.25s fiecare => timp = 1.5s
v = v';
v = repmat(v,1,T/Ts); 
v = v';
v = v(1:numel(v)); %liniarizeaza matricea
t = linspace(0,6*0.25e-3,6*T/Ts);

plot(t,v),grid;
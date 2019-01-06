P=40;
D = 4;
t=-40:0.1:40;
N=50;
w0=2*pi/P;
x = sawtooth(2*pi*(1/P)*t, D/P)/2+1/2;
fun=@(t)sawtooth(2*pi*(1/P)*t, D/P)/2+1/2;
Co=1/P*integral(fun,0,P);
Ck= zeros(1,N);
Ak= zeros(1,N);
semnal_nou=0;

for k= 1:1:N
   fun1=@(t)sawtooth(2*pi*(1/P)*t, D/P).*exp(-1i*k*w0*t);
    Ck(k)=1/P*integral(fun1,0,P);
    semnal_nou = semnal_nou+Ck(k)*exp(1i*k*w0*t);
    Ak(k+1)=2*abs(Ck(k));
end
Ak(1) = 2*abs(Co);
semnal_nou = semnal_nou + 0.5;
subplot(2,1,1), plot(t,x), hold on, plot(t,semnal_nou), title('Semnal initial si semnal reconstruit');
subplot(2,1,2), stem([1:51],Ak), title('Spectru Amplitudini');

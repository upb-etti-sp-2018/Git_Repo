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

%Conform cursului de SS, teoria seriilor Fourier (trigonometrica, armonica si complexa) ne spune
%ca orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri
%si cosinusuri de diferite frecvente, fiecare ponderat cu un anumit coeficient. 
%Acesti coeficienti reprezinta practic spectrul (amplitudinea pentru anumite frecvente).
%Semnalul reconstruit foloseste un numar finit de termeni(N=50 in tema) si se apropie ca
%forma de semnalul original, insa prezinta o marja de eroare. Cu cat marim
%numarul de coeficienti ai SF, aceasta marja de eroare va fi din ce in ce mai
%mica. In plus se observa faptul ca semnalul poate fi aproximat printr-o
%suma de sinusoide, variatiile semnalului prezentand un caracter sinusoidal.

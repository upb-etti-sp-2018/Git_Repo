% Tema_2_SP, Giurca Madalin Stefan, 424C

% date initiale
T = 40; %perioada semnalului
D = 6;  %panta
N = 50; %numar de coeficienti

[x,t] = gen_semnal(T,D);
[C0,Ck] = calc_coef(T,N);
x_ref = refacere_semnal(Ck, C0, t,T,N); %semnalul refacut din coeficienti
Ak = calc_armonic(C0,Ck);
afisare(t,x,x_ref,Ak);

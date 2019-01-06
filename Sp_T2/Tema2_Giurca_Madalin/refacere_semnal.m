%functie care reface semnalul dintr-un numar exact de coeficienti
%----------------------------------------------------------------

function x_ref = refacere_semnal(Ck, C0, t, T, N)
    x_ref = C0;
    for k = 1:N;
        x_ref = x_ref + Ck(k)*exp(1i*(2*pi/T)*k*t); % i = 1i speed improvements
    end
   x_ref = x_ref;
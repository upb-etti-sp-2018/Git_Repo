%functie pentru a calcula coeficientii fourier complex
%---------------------------------------------

function [C0, Ck] = calc_coef(T, N)
    
    %calcul componenta continua
    functCC = @(t) sawtooth((2*pi/T)*t,6/40)/2+0.5;
    C0 = (1/T)*integral(functCC, 0, T);

    Ck = zeros(1,N); %preinitializarea vectorului care o sa contina valorile coef fourier
    for k = 1:1:N
        %crearea obiectului 'function_handle' pentru calculul integralei
        funct = @(t) sawtooth(2*pi*(1/T)*t,6/40).*exp(-1i*(2*pi/T)*k*t); 
        %calculul efectiv pentru coeficientii fourier
        Ck(k) = (1/T)*integral(funct, 0, T); 
    end
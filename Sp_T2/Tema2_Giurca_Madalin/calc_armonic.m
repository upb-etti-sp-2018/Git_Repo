% Calcul amplitudini armonici

function Ak = calc_armonic(C0, Ck)
    Ak = zeros(1,50);
    for i=2:51
        Ak(i)=2*abs(Ck(i-1));
end
    Ak(1)=2*abs(C0);
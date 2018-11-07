% functie care transforma o secventa binara ( ex:[ 0 0 1 ] ) intr-un vector
% de puncte in functie de perioada de bit T si perioada de esantionare Ts

function M = liniarizare(v,T,Ts) 
M = v';
M = repmat(M,1,T/Ts); 
M = M';
M = M(1:numel(M));
end
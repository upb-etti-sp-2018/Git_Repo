% Generare semnal triunghiular cu perioada si panta data
% ......................................................

function [semnal,t] = gen_semnal(T, D)
    t = 0 : 0.001 : T; %vectorul de timp, cu o rezolutie de 10ms
    semnal = sawtooth((2*pi/T)*t,D/T)/2 + 0.5;
end
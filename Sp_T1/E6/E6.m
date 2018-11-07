% Se reprezinta un semnal binar de 6 biti, generati aleatoriu cu perioada
% de bit de 0.5 ms esantionat la 12kHz


semnal = randi([0 1], 1 , 6); %functie care genereaza un vector aleatoriu cu 
                         %valorile din vectorul [0 1], de dimensiune 1x6;
Fs = 12e3; %frecventa de esantionare
Tbit = 0.5e-3; %perioada de bit
N = Tbit/(1/Fs); %numar de esantioane per perioada de bit
semnalT = semnal(:);
semnalM = repmat(semnalT, 1, N); %dupa transpunere, se creeaza matricea cu 
                                 %numarul de esantioane pentru fiecare
                                 %perioada
semnalMt = semnalM'; 
semnalL = semnalMt(1:numel(semnalMt));%print transpunere si liniarizare se obtine vectorul dorit;
t = linspace(0, 6*0.5e-3,(N*Tbit)/(1/Fs));

plot(t,semnalL),grid,xlabel('timp'),ylabel('nivel');
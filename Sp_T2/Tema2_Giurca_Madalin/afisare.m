%functie afisare
%........................

function afisare(t,x,x_ref,Ak)
    subplot(2,1,1),plot(t,x),title('Semnal triunghiular x(t) si reconstruire x(t)-linie punctata'), hold on, plot(t,x_ref,'--');
    subplot(2,1,2),stem([0:50],Ak), title('Spectrul de amplitudini');
end
function [] = my_plot(t,X,Y,ERR1,ERR2)
%funkcja szkicujaca uzyskane rozwiazania ukladu rownan 
%   X,Y - tablice przyblizen; ERR1,ERR2 - tablice bledow dla x(t) oraz y(t)

%szkicowanie funkcji oraz przyblizenia
subplot(2,1,1);
plot(t,X(1,:),t,X(2,:), t,Y(1,:),t,Y(2,:));
legend('Euler x(t)','Exact x(t)','Euler y(t)','Exact y(t)');

%szkicowanie bledu
subplot(2,1,2);
plot(t,ERR1,t,ERR2);
legend('x(t) error','y(t) error');

end


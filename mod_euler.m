function [] = mod_euler(a,b,n,x_t0,y_t0,x_rr,y_rr)
%Funkcja rozwiazujaca uklad dwoch rownan liniowych z danym warunkiem
%poczatkowym metoda zmodyfikowana Eulera na przedziale [a,b]; funkcja
%rysuje rezultat oraz sprawdza za pomoca funkcji wbudowanej dsolve()
%[a,b] - przedzial, n-liczba przedzialow, x_t0, y_t0 - warunek poczatkowy w
%punkcie o wspolrzednej t0 = a; x_rr, y_rr - funckje 3 zmiennych bedace
%rownaniami rozniczkowymi z ukladu

%utworzenie wekotra punktów, w których obliczamy wartoœci
t = linspace(a,b,n+1);

%obliczanie przyblizenia funkcji-rozwiazan w n+1 punktach zawartych w
%wektorze t, za pomoca zmodyfikowanej metody Eulera
[X(1,:), Y(1,:)] = solve_system(t,n,x_t0,y_t0,x_rr,y_rr);

%obliczanie wartosci funckji-rozwiazan w n+1 punktach zaw. w wektorze t za
%pomoc¹ funkcji dsolve() srodowiska MATLAB - sprawdzanie poprawnosci metody
[X(2,:), Y(2,:)] = check(t,x_rr,y_rr,a,x_t0,y_t0);

%obliczenie bledu przyblizenia i wartosci obliczonych przez MALAB
[ERR_X, ERR_Y] = err(X,Y);

%rysowanie wykresów przyblizonych oraz rzeczywistych funkcji oraz wykres
%bledów w daym punkcie
my_plot(t,X,Y,ERR_X,ERR_Y);

end


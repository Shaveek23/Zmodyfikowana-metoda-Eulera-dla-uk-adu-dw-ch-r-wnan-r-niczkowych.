function [X Y] = check(t,x_rr,y_rr,a,x_t0,y_t0)
%funkcja rozwiazuje uklad dwoch rownan roznikczowych z zadanym warunkiem
%poczatkowym za pomoca funkcji wbudowanej dsolve()
%   %[a,b] - przedzial, n-liczba przedzialow, x_t0, y_t0 - warunek poczatkowy w
%punkcie o wspolrzednej t0 = a; x_rr, y_rr - funckje 3 zmiennych bedace
%rownaniami rozniczkowymi z ukladu


%sprawdzenie
% ponizszy kod oblicza dokladna funckje bedaca rozwiazaniem ukladu x_rr i
% y_rr oraz warunków pocz¹tkowych t_0 = a, x_t0, y_t0
syms x(tt) y(tt)
ode1 = diff(x) == x_rr(tt,x,y); %pobranie I-szego rownania z funkcji x_rr
ode2 = diff(y) == y_rr(tt,x,y); %pobranie II-giego rownanie z funkcji y_rr
odes = [ode1; ode2];
cond1 = x(a) == x_t0; %warunki pocz¹tkowe  na pocz¹tku programu
cond2 = y(a) == y_t0; %warunki pocz¹tkowe na pocz¹tku programu
conds = [cond1; cond2];
[xSol(tt), ySol(tt)] = dsolve(odes,conds);

%tablicowanie poprawnych wartosci (z rozwiazania Matlab):
X = xSol(t);
Y = ySol(t);
end


function [X,Y] = solve_system(t,n,x_t0,y_t0,x_rr,y_rr)
%funkcja wykonuje zmodyfikowana metode Eulera 
%[a,b] - przedzial, n-liczba przedzialow, x_t0, y_t0 - warunek poczatkowy w
%punkcie o wspolrzednej t0 = a; x_rr, y_rr - funckje 3 zmiennych bedace
%rownaniami rozniczkowymi z ukladu

%dlugosc przedzialu
h = t(2) - t(1);

%utworzenie tablic przechowuj¹cych wartoœci
X = zeros(1,n+1); %przechowuje przyblizenia x(t)
X(1,1) = x_t0;

Y = zeros(1,n+1);  %przechowuje przyblizenia y(t)
Y(1,1) = y_t0;


%obliczanie kolejnych przyblizen - metoda zmodyfikowana Eulera 
for i = 2 : (n+1)
    
    prev_x = X(1,i-1);
    prev_y = Y(1,i-1);
    
    %wzor na zmodyfikowana metode Eulera:
    X(1,i) = prev_x + h*x_rr(t(i-1) + h/2, prev_x +h/2*x_rr(t(i-1),prev_x,prev_y),prev_y);
    Y(1,i) = prev_y + h*y_rr(t(i-1) + h/2, prev_x, prev_y+h/2*y_rr(t(i-1),prev_x,prev_y));
    
end



end


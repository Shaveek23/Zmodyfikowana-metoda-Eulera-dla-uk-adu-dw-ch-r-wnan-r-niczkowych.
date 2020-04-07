function [ERR_X, ERR_Y] = err(X, Y)
%funkcja obliczajaca blad miedzy przyblizeniem metoda zmodyfikowana Eulera
%a funkcja srodowiska MATLAB
%   X,Y - tablice z wartosciami przyblizen 
%b³ad:
ERR_X = abs( X(1,:) - X(2,:) );
ERR_Y = abs( Y(1,:) - Y(2,:) ); 
end


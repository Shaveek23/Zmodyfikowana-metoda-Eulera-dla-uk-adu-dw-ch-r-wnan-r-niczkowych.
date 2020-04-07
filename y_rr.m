function [dy] = y_rr(t,x,y)
%drugie rownanie rozniczkowe w ukladzie;

%1)
    %dy = -2*x-y+sin(t)+cos(t);
    
%2)
    %dy = 6*x - 5*y - 6*exp(-t);
    
%3) a = 0, b = 0.1;   x(a) = 1, y(b) = 3
    %dy = 2*x - 2*t - 1;

%4) a = 0  b = 7; n = 1000; x(a) =1, y(a) = 5
    dy = 2*x - y + 2*sin(t);
end


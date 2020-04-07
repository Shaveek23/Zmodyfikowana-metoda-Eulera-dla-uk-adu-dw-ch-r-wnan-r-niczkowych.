function [dx] = x_rr(t,x,y)
%pierwszy równanie rózniczkowe ukladu 

%1) mod_euler(0,5,1000,-1,2,@x_rr,@y_rr)
    %dx = x + y -cos(t);

%2) mod_euler(-4,0,1000,-10,-12,@x_rr,@y_rr)
    %dx = -y - exp(-t);
   
%3) mod_euler(0,0.1,1000,1,3,@x_rr,@y_rr)
   % dx = x + y +3;
    
%4) mod_euler(0,5,10000,-1,2,@x_rr,@y_rr)
    dx = x - y + sin(t) + cos(t);
end


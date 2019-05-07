function x = newmet(fx, dfx)
x0 = 0;
epsi = 1e-3;

x = x0;
delta = feval(fx, x)/feval(dfx, x); 

while(abs(delta) > epsi)
    delta = feval(fx, x)/feval(dfx, x);
    x = x - delta;
end


%Newton method
% f = x^2 - 4
x0 = 10;
x1 = x0 - (x0^2-4)/(2*x0);
x2 = x1 - (x1^2-4)/(2*x1);
x3 = x2 - (x2^2-4)/(2*x2);
x4 = x3 - (x3^2-4)/(2*x3);
x5 = x4 - (x4^2-4)/(2*x4);

% Ein = Ud + Ur
% ir = Ur/R
% id = i0*(exp(a*Ud)-1)
% id = i0*(exp(a*(Ein-Ur))-1)
% i0*(exp(a*(Ein-Ur))-1)- Ur/R = 0

global Ein i0 a R;
%Ein = 100;
i0 = 1; %dots LD
a = 1;
R = 10;

%syms i0 a Ein R Ur
%diff(i0*(exp(a*(Ein-Ur))-1)- Ur/R, Ur)

t = 0:0.01:1;
eint = 100*sin(2*pi*t*2);

Urt = [];

for Ein = eint,
ur = newmet('funx','fund');
Urt = [Urt, ur];
end

plot(t, eint, t, Urt,'r--')
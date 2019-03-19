syms x
f = -(x+1)/(x-2);
x = linspace(1,3, 25);
fd = diff(f)
y = eval(fd);
ff = eval(f);
plot(x,y, x, ff,'--')
grid

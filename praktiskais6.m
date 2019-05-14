%t = 0:0.01:1.5;
%plot(t, sin(2*pi*t))

%ef = double(   sqrt(int(sin(2*pi*x)^2, x, 0, 1)/1)  )

%t = 0:0.01:4;
%plot(t, signals(t))
%>>> 1.uzd
syms x
g1 = double(int(0*x-0.5, x, 0, 0.5));
g2 = double(int(0*x, x, 0.5, 2));
g3 = double(int(0.5*sin(2*pi*(x+0.5)*3), x, 2, 2.5));
g4 = double(int(0*x, x, 2.5, 3));
g5 = double(int(0.5*(x-3), x, 3, 4));
vid = (g1 + g2 + g3 + g4 + g5)/5

%t = 0:0.01:4;
plot(t, signals(t), t, vid*ones(size(t)),'r--')
%>>>>>>>>>>>>> 2.uzd
h = 0.01;
t = 0:h:4;
vid_t = (1/(length(t)-1))* sum( signals(t(1:end-1)) )
%quad (10 balleem)





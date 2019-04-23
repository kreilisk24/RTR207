function y = lab3(t)

t1 = t(t<=0.5);
t2 = t(t>0.5 & t<=2);
t3 = t(t>2 & t<=2.5);
t4 = t(t>2.5 & t<=3);
t5 = t(t>3);

y1 = zeros(size(t1))-0.5;

y2 = 0.5*rand(size(t2))-0.25;


f = 3; y3 = 0.5*sin(2*pi*(t3+0.5)*f);

y4 = zeros(size(t4));

deltaT = 3; k = 0.5; y5 = k*(t5-deltaT);

y = [y1, y2, y3, y4, y5];
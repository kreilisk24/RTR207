% Konturstravu metode 
% I*R = U

%  I1(R8+R6)    -I2(R6)+ I3(0)                = E1
% -I1(R6)       +I2(R6+R5+R7)-I3(R7)              = E2 
%  I1(0)        -I2(R7) +     I3(R7+R4+R3+R2+R1)  =-E1+J3(R7+R4+R3)

%.........
t=0:0.01:5;
r = [1 2 3 4 5 8 7 8];
E1 = lab3(t);
E2 = zeros(size(t))+4;
J3 = sin(5*t);

R = [sum(r([8 6])), -r(6)         , 0;
    -r(6)         ,sum(r([6 5 7])),-r(7);
    0             , -r(7)         , sum(r([7 4 3 2 1]))
    ];
Ein = [E1; E2; -E1+J3.*sum(r([7 4 3]))];

I = R\Ein;
%.......
Ur7 = r(7).*(I(2,:)-I(3,:)-J3);
Pr7 = Ur7.*(I(2,:)-I(3,:));

% 2.uzd........Parbaudit rezultatu


Ksp1 = r(8).*I(1,:) + r(6).*(I(1,:)-I(2,:)) -E1;
% Ksp = 0 ?
%.............................
plot(t,Ksp1)
hold on
axis([0 5 -1 1])
xlabel('t,s')
ylabel('U,V')
% Konturstravu metode 
% I*R = U

%  I1(R8+R6)    -I2(R6)+ I3(0)                = -E1+
% -I1(R6)       +I2(R6+R5+R7)-I3(R7)              = E2 
% -I1(E1)       -I2(R7) +     I3(R7+R4+R3+R2+R1)  =-E1

%.........
t=0:0.01:2;
r = [1 2 3 4 5 8 7 8];
E1 = psigfrm(t);
E2 = 4;
J3 = sin(5*t);

R = [sum(r([8 6])), -r(6)         , 0;
    -r(6)         ,sum(r([6 5 7])),-r(7);
    0             , -r(5)         , sum(r([5 6 7]))
    ];
Ein = [E1; -E2; -E3];

I = R\Ein;
%.......
Ur7 = r(7)*(I(2)-I(3));
Pr7 = Ur7 * (I(2)-I(3));

% 2.uzd........Parbaudit rezultatu

Ksp = Ur7 + E2 + (r(2)*(I(2)-I(1))) + (r(4)*I(2));
% Ksp = 0 ?
%.............................
% Mainspriegums
t = 0:0.01:5;
Em1 = sin(2*pi*2*t);
Em2 = -funkcija_t1(t);
Em3 = 1.5*ones(size(t));

Emin = [Em1; -Em2; -Em3];

Im = R\Emin;

Urm5 = r(5).*(Im(2,:)-Im(3,:));
Prm5 = Urm5.*(Im(2,:)-Im(3,:));

Kspm = Urm5 + Em2 + r(2)*(Im(2,:)-Im(1,:)) + r(4)*Im(2,:);
%.............
plot(t,Kspm)
hold on
axis([0 5 -1 1])
xlabel('t,s')
ylabel('U,V')
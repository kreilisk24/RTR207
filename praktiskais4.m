% Konturstravu metode 
% I*R = U

%  I1(R1+R2+R3) -I2(R2) +     I3(0)        = E1
% -I1(R2)       +I2(R2+R4+R5)-I3(R5)       =-E2 
%  I1(0)        -I2(R5) +     I3(R5+R6+R7) =-E3

%.........
r = [1 2 3 6 8 9 3];
E1 = 1;
E2 = -3;
E3 = 5;

R = [sum(r(1:3)), -r(2), 0;
    -r(2) ,sum(r([2 4 5])),-r(5);
    0, -r(5), sum(r([5 6 7]))
    ];
Ein = [E1; -E2; -E3];

I = R\Ein;
%.......
Ur5 = r(5)*(I(2)-I(3));
Pr5 = Ur5 * (I(2)-I(3));

% 2.uzd........Parbaudit rezultatu

Ksp = Ur5 + E2 + (r(2)*(I(2)-I(1))) + (r(4)*I(2));
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
Rsl = [0.1 0.2 0.5 0.8 0.9 1 1.1 1.2 1.5 2 5 10]*1e3;

Usl = [2.16 3.96 7.94 10.61 11.31 11.94 12.52 13.04 14.35 15.96 19.98 21.81];

V = min(Rsl):0.01:max(Rsl);

C = polyfit(Rsl,Usl,2);

U = polyval(C,V);%C(1)*V^3 + C(2)*V.^2 + C(3)*V.^1 + C(4)*V.^0;

plot(Rsl,Usl,"k*",V,U)

xlabel("R_{SL}, \Omega")

ylabel("U_{SL}, V")

title("Sprieguma U_{SL} atkarība no pretestības R_{SL}")

grid on

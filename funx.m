function fx = funx(Ur)
global Ein i0 a R;

fx = i0*(exp(a*(Ein-Ur))-1)- Ur/R;
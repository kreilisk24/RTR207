function dfx = fund(Ur)
global Ein i0 a R;

dfx = -1/R - a*i0*exp(a*(Ein-Ur));

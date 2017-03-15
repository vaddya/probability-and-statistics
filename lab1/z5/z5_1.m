x1 = 1.4;
x2 = 14;
m = 60;
step = (x2 - x1) / m;
r = 6;

X = x1:step:x2;

X_norm = (x1 + x2) / 2 + (x2 - x1) * X / 2;

disp(X_norm);

Z = z5_1_relerr(X, 0.003);
disp(Z);

exact = z5_1_fun(X);
approx = z5_1_approx(X, r);
error = exact - approx;

plot(X, Z);
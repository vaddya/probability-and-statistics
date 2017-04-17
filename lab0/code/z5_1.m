x1 = 1.4;
x2 = 14;
m = 60;
step = (x2 - x1) / m;
r = 6;
err = 0.001;
X = x1:step:x2;

exact = z5_1_fun(X);
approx = z5_1_approx(X, r);
approx_relerr = z5_1_relerr(X, err);
error_approx = exact - approx;
error_relerr = exact - approx_relerr;

plot(X, error_approx, X, error_relerr);
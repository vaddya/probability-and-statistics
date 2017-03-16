fun = @(m) 2/3 * m * sqrt(m * nthroot(m * nthroot(m, 4), 3));

m = 3.6485e2;
disp(fun(m));

m = 24/37;
disp(fun(m));
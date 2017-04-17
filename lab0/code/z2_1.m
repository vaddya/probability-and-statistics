fun = @(x) (4 + 7*x) .* sin(pi .* nthroot(1 + x, 3));

X = 0:0.7:7;
Y = fun(X);
disp(Y);
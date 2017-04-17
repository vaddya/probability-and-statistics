x0 = 1.2;
y0 = -0.8;

min_vals = fminunc(@z6_2_fun, [x0, y0]);
disp(min_vals);
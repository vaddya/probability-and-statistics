function f = z5_1_relerr(x, err)
    i = 1;
    relerr = 1;
    while relerr > err
        val = z5_1_approx(x, i);
        exact_val = z5_1_fun(x);
        relerr = abs(val - exact_val) / exact_val;
        i = i + 1;
    end
    f = val;
end
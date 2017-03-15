function f = z5_1_approx(x, r)
    f = 0;
    for k = 1:r 
        f = f + (-1)^(k - 1) * x.^(2*k - 1) / (2*k - 1);
    end
end
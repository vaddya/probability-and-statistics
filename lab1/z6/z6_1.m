a = 0;
b = 7;

fplot(@(x) z6_1_fun(x), [a,b]);

fprintf('integral1 = %f\n', quad(@(x) z6_1_fun(x), a, b));
fprintf('integral2 = %f\n', quadl(@(x) z6_1_fun(x), a, b));
fprintf('integral3 = %f\n\n', integral(@(x) z6_1_fun(x), a, b));

fprintf('Min val = %f\n', fminbnd(@(x) z6_1_fun(x), a, b));
fprintf('Root val = %f\n', fzero(@(x) z6_1_fun(x), min_val));
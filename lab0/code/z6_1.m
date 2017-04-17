a = 0;
b = 7;

fplot(@z6_1_fun, [a,b]);
min_val = fminbnd(@z6_1_fun, a, b);
root_val = fzero(@z6_1_fun, min_val);

fprintf('quad = %f\n', quad(@z6_1_fun, a, b));
fprintf('quadl = %f\n', quadl(@z6_1_fun, a, b));
fprintf('integral = %f\n\n', integral(@z6_1_fun, a, b));
fprintf('Min val = %f\n', min_val);
fprintf('Root val = %f\n', root_val);
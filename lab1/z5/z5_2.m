k = 100;
X = [];
denom = sqrt(10);
while k >= 0.1
   X = cat(2, X, k);
   k = k / denom;
end
X = sort(X);
Y = z5_1_fun(X);

disp(X);
disp(Y);
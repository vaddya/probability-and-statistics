disp('Task #11');
disp('A = ');
A = [
    20, 1, 2, 3, 41;
    6, 7, 8, 9, 10;
    22, 23, 24, 25, 26;
    30, 38, 12, 51, 0;
    12, 41, 64, 9, 73;
    ];
disp(A);

sum_vals = sum(A);
prod_vals = prod(A);
min_vals = min(A);

disp('Vector of sum of column elements');
disp(sum_vals);
disp('Vector product of column elements');
disp(prod_vals);
disp('Vector of min elements of columns');
disp(min_vals);
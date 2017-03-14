A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 75;
    ];
disp(A);

sum_vals = min(A.') + max(A.');

disp('Vector of (row_max + row_min) elements');
disp(sum_vals);
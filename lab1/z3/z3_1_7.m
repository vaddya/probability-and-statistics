A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 75;
    ];
disp(A);

mean_vals = mean(A.');

disp('Vector of mean row values');
disp(mean_vals);
disp('Task #12');
disp('A = ');
A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 75;
    ];
disp(A);

min_val = min(min(A));
max_val = max(max(A));
mean_val = (min_val + max_val) / 2;

disp('Mean of min and max elements');
fprintf('mean(%d, %d) = %f\n', min_val, max_val, mean_val);
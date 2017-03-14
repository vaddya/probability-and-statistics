A = [
    20, 1, 2, 3, 41;
    6, 7, 8, 9, 10;
    22, 23, 24, 25, 26;
    30, 38, 12, 51, 0;
    12, 41, 64, 9, 73;
    24, 11, 34, 32, 11;
    ];
disp(A);

square_sums = sum(A.^2);

disp('Vector of sum of square of column');
disp(square_sums);
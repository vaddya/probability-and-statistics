A = [
    0, 1, 2, 3, 4, 1, 2, 3, 4;
    9, 8, 7, 6, 5, 8, 7, 6, 5;
    10, 11, 12, 13, 14, 11, 12, 13, 14;
    19, 18, 17, 16, 15, 18, 17, 16, 15;
    20, 21, 22, 23, 24, 21, 22, 23, 24;
    30, 31, 32, 33, 34, 31, 32, 33, 34;
    ];
disp(A);
A([1,6],:) = A([6,1],:);
fprintf('Swap first and last rows\n');
disp(A);
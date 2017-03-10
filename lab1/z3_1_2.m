A = [
    0, 1, 2, 3, 4;
    9, 8, 7, 6, 5;
    10, 11, 12, 13, 14;
    19, 18, 17, 16, 15;
    20, 21, 22, 23, 24;
    ];
disp(A);
res = sum(A(1,:));
fprintf('Sum of the first row = %d\n\n', res);
A = [
    9, 8, 7, 6, 5;
    10, 11, 12, 13, 14;
    19, 18, 17, 16, 15;
    0, 1, 2, 3, 4;
    20, 21, 22, 23, 24;
    ];
disp(A);

[min_val, index] = min(min(A.'));
sum_val = sum(A(index,:));

fprintf('Min element = %d\n', min_val);
fprintf('Sum of that row = %d\n', sum_val);
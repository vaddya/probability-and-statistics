A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 74;
    ];
disp(A);

[min_vals, indexes] = min(A.');

disp('Min elements of each row');
for i = 1 : 5
    fprintf('A(%d, %d) = %d\n', i, indexes(i), min_vals(i));
end
fprintf('Max element among them: %d\n', max(B));
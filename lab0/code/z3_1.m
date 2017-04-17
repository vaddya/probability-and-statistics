disp('Task #1');
disp('A = ');
A = [
    0, 1, 2, 3, 4, 5;
    11, 10, 9, 8, 7, 6;
    12, 13, 14, 15, 16, 17;
    23, 22, 21, 20, 19, 18;
    ];
disp(A);
sum_val = sum(max(A.'));
fprintf('Sum of the max elements = %d\n\n', sum_val);

disp('Task #2');
disp('A = ');
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
fprintf('Sum of that row = %d\n\n', sum_val);

disp('Task #3');
disp('A = ');
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
disp('Swaped first and last rows');
disp(A);

disp('Task #4');
disp('A = ');
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
fprintf('Max element among them: %d\n\n', max(min_vals));

disp('Task #5');
disp('A = ');
A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 75;
    ];
disp(A);
max_vals = max(A.');
disp('Vector of row_max elements');
disp(max_vals)

disp('Task #6');
disp('A = ');
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

disp('Task #7');
disp('A = ');
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

disp('Task #8');
disp('A = ');
A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 75;
    ];
disp(A);
std_vals = std(A.');
disp('Vector of std row values');
disp(std_vals);

disp('Task #9');
disp('A = ');
A = [
    20, 1, 2, 3, 41, 5;
    6, 7, 8, 9, 10, 11;
    22, 23, 24, 25, 26, 13;
    30, 38, 12, 51, 0, 33;
    12, 41, 64, 9, 73, 75;
    ];
disp(A);
mean_vals = (min(A.') + max(A.')) / 2;
disp('Vector of mean(max, min) row elements');
disp(mean_vals);

disp('Task #10');
disp('A = ');
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
fprintf('mean(%d, %d) = %f\n\n', min_val, max_val, mean_val);

disp('Task #13');
disp('A = ');
A = [
    20, 1, 2, 3, 41;
    6, 7, 8, 9, 10;
    22, 23, 24, 25, 26;
    30, 38, 12, 51, 0;
    12, 41, 64, 9, 73;
    ];
disp(A);
diagonal = diag(A);
disp('Vector of diag elements');
disp(diagonal.');
fprintf('Trace of matrix = %d\n\n', trace(A));

disp('Task #14');
disp('A = ');
A = [
    20, 1, 2, 3;
    6, 7, 8, 9;
    22, 23, 24, 25;
    30, 38, 12, 51;
    ];
disp('B = ');
B = [
    40, 1, 32, 3;
    12, 3, 12, 44;
    23, 0, 24, 12;
    0, 12, 35, 52;
    ];
disp(A);
disp(B);
cat_matrix = cat(2, A.', B.');
disp('(A|B)')
disp(cat_matrix);

disp('Task #15');
disp('A = ');
A = [
    20, 1, 2;
    5, 15, 0;
    0, 25, 35;
    30, 0, 7;
    ];
disp(A);
sum_val = sum(sum(A));
disp('Sum of all elements');
disp(sum_val);
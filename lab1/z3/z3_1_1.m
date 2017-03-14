A = [
    0, 1, 2, 3, 4, 5;
    11, 10, 9, 8, 7, 6;
    12, 13, 14, 15, 16, 17;
    23, 22, 21, 20, 19, 18;
    ];
disp(A);

res = 0;
for i = 1 : 4
    res = res + max(A(i,:));
end
fprintf('Sum of the max elements = %d\n', res);
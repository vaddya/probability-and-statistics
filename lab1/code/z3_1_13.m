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

fprintf('Trace of matrix = %d\n', trace(A));
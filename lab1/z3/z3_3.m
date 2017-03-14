A = [
    9, 8, 3, 2, 5;
    10, 1, 2, 0, 14;
    9, 0, 7, 16, 0;
    10, 12, 2, 1, 4;
    2, 6, 11, 3, 14;
    ];
disp(A);

disp('1) Matrix determinant');
disp(det(A));

disp('2) Inverse matrix');
disp(inv(A));

disp('3) Characteristic polynomial');
poly_vals = poly(A);
disp(poly_vals);

disp('4) Roots of polynomial');
roots_vals = roots(poly_vals);
real_roots = roots_vals(imag(roots_vals) == 0);
complex_roots = roots_vals(imag(roots_vals) ~= 0);
disp(sort(real_roots));
disp(complex_roots);

disp('5) Eigenvalues');
eigh_vals = eig(A);
disp(eigh_vals);
disp('Equal to the roots of the characteristic polynomial');

disp('6) LU decomposition');
[l_matrix, u_matrix] = lu(A);
disp('L matrix with permutation matrix');
disp(l_matrix);
disp('U matrix');
disp(u_matrix);
disp('LU = A');
disp(l_matrix * u_matrix);

disp('7) QR decomposition');
[q_matrix, r_matrix] = qr(A);
disp('Q matrix');
disp(q_matrix);
disp('R matrix');
disp(r_matrix);
disp('QR = A');
disp(q_matrix * r_matrix);

disp('8) Singular numbers');
sing_vals = svd(A);
disp(sing_vals);
[U, S, V] = svd(A);
disp(U*S*V');

disp('9) Matrix trace');
trace_val = trace(A);
disp(trace_val);

disp('10) Matrix condition');
cond_matrix = cond(A);
disp(cond_matrix);

disp('11) Matrix exponent');
expm_matrix = expm(A);
disp(expm_matrix);

disp('12) Matrix log');
logm_val = logm(expm_matrix);
disp(logm_val);
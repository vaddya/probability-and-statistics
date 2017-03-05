z1 = -1 + sqrt(5) * 1i;
z1_exp = abs(z1) * exp(angle(z1) * 1i);

z2 = 2.1 * exp(degtorad(211) * 1i);
z2_alg = real(z2) + imag(z2) * 1i;

z3 = 0.4 * exp(degtorad(32) * 1i);
z4 = 4 + 3 * 1i;

% oh my cubic root of complex number...
res = z1_exp^(1/3) * z2 * z3 + z4;
res_exp = abs(res) * exp(angle(res) * 1i);
disp(res_exp);
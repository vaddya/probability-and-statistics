num = @(p) p.^2 + 1.8*p + 78;
denom = @(p) 2.65*p.^3 + 3.09*p.^2 + 7.04*p + 34.05;
w = @(p) num(p) ./ denom(p);

w_max = max(double(abs(imag(solve(denom)))));
input = linspace(0, 5 * w_max, 100);

abs_vals = abs(w(1i * input));
angle_vals = angle(w(1i * input));
real_vals = real(w(1i * input));
imag_vals = imag(w(1i * input));

disp('abs, angle, real, imag');
disp([abs_vals.', angle_vals.', real_vals.', imag_vals.']);
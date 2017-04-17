num = @(p) p.^2 + 1.8*p + 78;
denom = @(p) 2.65*p.^3 + 3.09*p.^2 + 7.04*p + 34.05;
w = @(p) num(p) ./ denom(p);


k = 100;
X = [];
denom = sqrt(10);
while k >= 0.1
   X = [X k*1i];
   k = k / denom;
end
X = sort(X);

abs_vals = abs(w(X));
angle_vals = 180 .* angle(w(X)) ./pi;
disp('abs, angle');
disp([abs_vals.', angle_vals.']);

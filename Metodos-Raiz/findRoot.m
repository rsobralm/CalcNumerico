pkg load optim;
#f = @(x) 2*sin(x) - 3*x.^2;
#d = newton(f,0.5,0.001);
#c = bisection(f,0.5,1,0.001);
#c = falsePosition(f,0.5,1,0.001);
f = @(x) 4*x.^6 - 5*x.^5 + 1;
#d = newton(f,1.1,0.001);
d = secant(f, 1.05, 1.1, 0.001);
#disp(c);


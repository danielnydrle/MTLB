%% 1
x = (-10:0.01:10);
plot(x,f1(x));
[x_res1, fval1] = fminbnd(@f1, 2, 4);
[x_res2, fval2] = fminbnd(@f1, 4, 6);
hold on;
plot(x_res1, fval1, "+r");
plot(x_res2, fval2, "+r");
hold off;

%% 2
glmin = fminbnd(@f2, -6000, 6000);

%% 3
x1 = (-2:0.01:2);
x2 = (-2:0.01:2);

[X1, X2] = meshgrid(x1, x2);
Z = f3(X1, X2);
mesh(X1, X2, Z);

%% 4
%1
function fce = f1(x)
    fce = sin(x)./x + exp(-(x-4).^2);
end

%2
function fce = f2(x)
    fce = 1./4.*(x^4) - 41./6.*(x^3) + 209./4.*(x^2) - 135.*x;
end

%3
function fce = f3(x1, x2)
    fce = 100.*(x2 - x1.^2).^2 + (1 - x1).^2;
end
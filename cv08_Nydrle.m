clear
clc
close all

%% 1

syms x

step = 0.01;
rng;

f11 = 1/(2+cos(x));
rng = 0:step:2*pi-step;
i11_num = sum(1./(2+cos(rng + step / 2)) * step); % 3.6265
i11_ana = int(f11, x, 0, 2*pi); % 3.6275

f12 = x*atan(x);
rng = 0:step:sqrt(3)-step;
i12_num = sum(((rng + step / 2).*atan((rng + step / 2)) * step)); % 1.2246
i12_ana = int(f12, x, 0, sqrt(3)); % 1.2284

f13 = sqrt(1-sin(2*x));
rng = 0:step:2*pi-step;
i13_num = sum((sqrt(1-sin(2*(rng + step / 2)))) * step); % 5.6536
i13_ana = int(f13, x, 0, 2*pi); % 5.6569

f14 = exp(-x^2);
rng = -10:step:5-step;
i14_num = sum((exp(-(rng + step / 2).^2)) * step); % 1.7725
i14_ana = int(f14, x, 0, 2*pi); % 0.8862

f15 = exp(-x^2);
rng = -1000:step:1000-step;
i15_num = sum((exp(-(rng + step / 2).^2)) * step); % 1.7725
i15_ana = int(f14, x, -Inf, Inf); % 1.7724

%% 2

rng = (1:1000);

f21 = (-1)^x*2^(1 - x);
sum21_num = sum((-1).^rng.*2.^(1 - rng)); % -0.6667
sum21_ana = symsum(f21, x, 1, Inf); % -2/3

f22 = 1/(x*(x + 1));
sum22_num = sum(1./((rng).*((rng) + 1))); % 0.9990
sum22_ana = symsum(f22, x, 1, Inf); % 1

f23 = (-1)^x/x;
sum23_num = sum((-1).^rng./rng); % -0.6926
sum23_ana = symsum(f23, x, 1, Inf); % -log(2)

f24 = (2*x - 1)/2^x;
sum24_num = sum((2.*rng - 1)./2.^rng); % 3
sum24_ana = symsum(f24, x, 1, Inf); % 3

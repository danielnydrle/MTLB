clear
clc
clear all

%% 1
u = input("Zadejte cislo: ");
x = u*cos(0:pi/3:2*pi);
y = u*sin(0:pi/3:2*pi);

plot(x,y);
axis equal;

%% 3
x = -5:0.05:5;

z0 = fn(x);
z1 = fn(x, 1);
z2 = fn(x, 2);

% 3a

figure
graph = plot(x, z0, "r", x, z1, "g--", x, z2, "b.");

fig = gcf;
F = getframe(fig);

title(gca, "test");

imwrite(F.cdata, "cv05_Nydrle.png")
print(fig, "cv05_Nydrle", "-dpdf")
imwrite(F.cdata, "cv05_Nydrle.bmp")

% 3b

figure

ax0 = subplot(3, 1, 1);
z0_graph = plot(x, z0, "r");
title(ax0, "f(x, y); y = 0");
xlabel(ax0, "x");
ylabel(ax0, "z")
legend(ax0, z0_graph, "z")

ax1 = subplot(3, 1, 2);
z1_graph = plot(x, z1, "g--");
title(ax1, "f(x, y); y = 1");
xlabel(ax1, "x");
ylabel(ax1, "z")
legend(ax1, z1_graph, "z")

ax2 = subplot(3, 1, 3);
z2_graph = plot(x, z2, "b.");
title(ax2, "f(x, y); y = 2");
xlabel(ax2, "x");
ylabel(ax2, "z")
legend(ax2, z2_graph, "z")

linkaxes([ax0 ax1 ax2], "x")

savefig(fig, "cv05_Nydrle.fig")

%% 4
figure

x = -5:0.1:5;
y = -6:0.2:6;
[x y] = meshgrid(x, y);

z3d = fn(x, y);
plot3(x, y, z3d);

%% 2

% musi byt definovano na konci souboru
function Z = fn(x, y)
    if (nargin == 1)
        y = 0;
    end
    Z = x.*exp(1).^(-x.^2-y.^2)+tanh(x.*y);
end
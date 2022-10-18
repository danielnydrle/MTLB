clear;
clc;
close all;

%% 1
C_rozmery = round(10 + rand(1, 3) * (40 - 10));
C = randn(C_rozmery);

%% 2
C_soucet = 0; C_prumer = 0;

% pocet prvku v C
C_pocet = size(C, 1) * size(C, 2) * size(C, 3); 

% matice o velikosti [1, pocet prvku v C]
C_vektor = reshape(C, [1, C_pocet]);

% cyklus for
for i = C_vektor
    C_soucet = C_soucet + i;
end
C_prumer = C_soucet / C_pocet;

% prikaz sum
C_soucet = sum(C, "all");
C_prumer = C_soucet / C_pocet;

%% 3
C_2d = squeeze(C(1,:,:));
C_2d_prumery = zeros(0, size(C_2d, 1));

for i = 1:size(C_2d, 1)
    C_2d_prumery(i, 1) = sum(C_2d(i,:));
end

for i = 1:size(C_2d, 1)
    for j = 1:size(C_2d, 2)
        C_2d(i, j) = C_2d(i, j) - C_2d_prumery(i);
    end
end

%% 4
fc([1, 2, 3])

function [out] = fc(in)
    out = (sin(in)).^2 .* cos(in);
end
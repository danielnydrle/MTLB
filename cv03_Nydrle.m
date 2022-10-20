clear;
clc;
clear all;

A = randn(5, 10);

B = round(A)

B = VecBubbleSort(B)

function Y = VecBubbleSort(X)
% Zde vlozte naprogramovanou funkci bublinkoveho razeni vektoru
% X - nesetridena vstupni matice
% Y - algoritmem setridena vystupni matice
    [rows, cols] = size(X);

    for i = 1:cols-1
        for j = (i+1):cols
            k = 1;
            while X(k, i) == X(k, j) % for s parametrem k bohuzel nefungoval
                k = k + 1;
                if (k > rows)
                    break;
                end
            end
            if X(k, i) < X(k, j)
                X(:, [i, j]) = X(:, [j, i]);
            end
        end
    end
    Y = X;
end
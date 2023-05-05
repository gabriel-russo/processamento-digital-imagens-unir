close all
img = imread("lena_gray_512.tif");

out_1 = rebatimento_90graus(img);

out_2 = rebatimento_menos_90graus(img);

imshow([img out_1 out_2]);

% ===INTERPOLAÇÃO BILINEAR=====================================

A = [10 20 0; 
    30 30 25; 
    30 30 90];

n = 2.3;

fator = 1 / n;

i = 0;
j = 0;

x = 0;
y = 1 * fator;

fij = A(i + 1, i + 1);
fij1 = A(i + 1, j + 2);
fi1j = A(i + 2, j + 1);
fi1j1 = A(i + 2, j + 2);

f0 = fij + (y - j) * (fij1 - fij);
f1 = fij1 + (y - j) * (fi1j1 - fi1j);
f2 = f0 + (x - i) * (f1 - f0);

fprintf("O valor do proximo novo pixel, na posicao (%i, %i) será %f \n", i+1, j+2, f2);

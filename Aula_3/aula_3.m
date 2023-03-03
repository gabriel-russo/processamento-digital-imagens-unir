pkg('load', 'image'); # Carregando a lib

# Atividade prática

% Calcule a quantidade de bytes necessários para representar uma imagem digital de acordo com os seguintes padrões

% Fórmulas:
% b = R x C x l
% L = 2 ^ l

% Intensidade I = 4
% Resolução   R = 1024
% Onde        R = C

a = (1024 * 1024 * 4) / 8;
fprintf("Questão a - Imagem possui o tamanho de %i bytes\n", a);

% Intensidade I = 7
% Resolução   R = 512
% Onde        R = C

b = (512 * 512 * 7) / 8;
fprintf("Questão b - Imagem possui o tamanho de %i bytes\n", b);

% Intensidade I = 9
% Resolução   R = 1024
% Onde        R = C

c = (1024 * 1024 * (9 + 9 + 9)) / 8;
fprintf("Questão c - Imagem possui o tamanho de %i bytes\n", c);

% Intensidade l = 8
% Resolução   R = 1024
% Onde        R = C

d = (2048 * 2048 * (8 + 8 + 8)) / 8;
fprintf("Questão d - Imagem possui o tamanho de %i bytes\n", d);

% INTERPOLAÇÃO
% VIZINHO MAIS PRÓXIMO, BILINEAR E BICUBICO
img = imread('lena_gray_512.tif');
vizinho = imresize(img, 0.25, 'nearest');
bilinear = imresize(img, 0.25, 'bilinear');
bicubico = imresize(img, 0.25, 'bicubic');

imshow([vizinho bilinear bicubico])

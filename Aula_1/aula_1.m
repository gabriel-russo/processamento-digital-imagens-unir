pkg('load', 'image'); # Carregando a lib

# Fundação Universidade Federal de Rondônia
# Aluno: Gabriel Morais Russo
# Data: 10/02/2023
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

img = imread("./lena_gray_512.tif"); # Abrir uma imagem
figure('name', 'Imagem original'), imshow(img); # Exibir a imagem aberta
title("Imagem original");

[linha, coluna] = size(img);

fprintf("Quantidade de linhas: %i e Quantidade de colunas %i \n\n", linha, coluna);

display "%%%%%%%%% Utilizando Whos %%%%%%%%%%";
whos img;
display "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n";

resize_img = imresize(img, [200 200]);
figure('name', "Imagem redimensionada"), imshow(resize_img);
title("Imagem redimensionada");

imwrite(resize_img, "./lena_gray_200.tif");

# Manipulação de cores

img_rgb = imread('./lena_color_256_rgb.tif');

red = img_rgb(:, :, 1);
green = img_rgb(:, :, 2);
blue = img_rgb(:, :, 3);

imshow([red, green, blue]);

img_yiq = rgb_to_yiq(img_rgb);

figure('name', "Imagem convertida para cores YIQ"), imshow(img_yiq);

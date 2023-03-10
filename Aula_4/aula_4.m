pkg('load', 'image'); # Carregando a lib

% ############# TRANSFORMAÇÃO DE INTENSIDADE ##############################################

% ################### NEGATIVO #########################

img_path = "mamografia.png";

img = imread(img_path);

img_metadata = imfinfo(img_path);

L = 2 ^ img_metadata.BitDepth - 1;

img_negativo = negativo(img_path, 8);

figure, imshow([img img_negativo]);

% ################### YIQ NEGATIVO - BANDA Y #########################

addpath('../Aula_1');

img_2 = imread("limiar.png");

img_2_yiq = rgb_to_yiq(img_2);

img_2_yiq_negativo = yiq_to_negative_rgb(img_2_yiq);

figure, imshow(img_2_yiq_negativo);

% ################### LIMIARIZAÇÃO OU BINARIZAÇÃO #########################

img_3 = imread("limiar.png");

img_3 =rgb2gray(img_3);

img_3(img_3<128) = 0;
img_3(img_3>=128) = 255;

figure, imshow(img_3);

% ################### ALARGAMENTO DE CONSTRASTE #########################

img_4 = imread("limiar.png");

img_4 = imadjust(img_4);

figure, imshow(img_4);

% ############# TRANSFORMAÇÃO LOGARITMICA ########################

img_5 = imread("fisico.tif");

img_5 = im2double(img_5);

c = 1;

img_5_logaritmica = c * log(1 + img_5);

figure, imshow([img_5, img_5_logaritmica]);

% ############# TRANSFORMAÇÃO LOGARITMICA ########################

img_6 = imread("fratura.png");

img_6 = rgb2gray(img_6);

% Normalização da imagem
img_6 = im2double(img_6);

img_6_base = img_6;

c = 1;
gamma = 0.8;

img_6 = c * img_6 .^ gamma;

figure, imshow([img_6_base img_6]);

% ############# EXPANSÃO DE HISTOGRAMA ########################

rmin = 0;
rmax = 3;
L = 5;

s = @(r) round( (r - rmin) / (rmax - rmin) * (L - 1) );

fprintf("O novo valor de intensidade do pixel 0 é %i\n", s(0))
fprintf("O novo valor de intensidade do pixel 1 é %i\n", s(1))
fprintf("O novo valor de intensidade do pixel 2 é %i\n", s(2))
fprintf("O novo valor de intensidade do pixel 3 é %i\n", s(3))

% ############# EXPANSÃO DE HISTOGRAMA - COM IMAGEM ########################

img = imread("sol2.jpg");

figure, imhist(img);

img_expansao = expansao_de_histograma(img);

figure, imshow([img img_expansao]);

figure, imhist(img_expansao);

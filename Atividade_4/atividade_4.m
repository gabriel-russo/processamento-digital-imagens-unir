close all
% Preparando os dados
imgA = imread("lena_gray_512.tif");
imgB = imread("text_image.tif");
imgB = imgB(1:512, 1:512, 1);

% 1 - Dissolve cruzado uniforme
img_dissolve_cruzado_uniforme = dissolve_cruzado_uniforme(imgA, imgB, 0.2);

figure, imshow(img_dissolve_cruzado_uniforme);

% 1 - Dissolve cruzado não uniforme
img_dissolve_cruzado_nao_uniforme = dissolve_cruzado_nao_uniforme(imgA, imgB, rand(512));

figure, imshow(img_dissolve_cruzado_nao_uniforme);

% 2 - Gerar Ruído Aditivo - GAUSSIANO
img_ruido_gauss = gerar_ruido_aditivo(imgA, "gaussiano");

figure, imshow(img_ruido_gauss);

% 2 - Gerar Ruído Aditivo - SAL E PIMENTA
img_ruido_sal_e_pimenta = gerar_ruido_aditivo(imgA, "sal & pimenta");

figure, imshow(img_ruido_sal_e_pimenta);

% 3 - Restauração de imagens - Filtro de média aritmética
img_media_aritmetica = filtros_lineares(img_ruido_gauss, "m", 3);

figure, imshow(img_media_aritmetica);

% 3 - Restauração de imagens - Filtro de média geométrica
img_media_geometrica = filtros_lineares(img_ruido_gauss, "g", 3);

figure, imshow(img_media_geometrica);

% 3 - Restauração de imagens - Filtro de média harmônica
img_media_harmonica = filtros_lineares(img_ruido_gauss, "h", 3);

figure, imshow(img_media_harmonica);

% 4 e 5 - Restauração de imagens - Filtro de Mediana
img_filtro_mediana_s_p = filtros_nao_lineares(img_ruido_sal_e_pimenta, "m", 3);
img_filtro_mediana_gauss = filtros_nao_lineares(img_ruido_gauss, "m", 3);

figure;
subplot(1, 2, 1);
imshow(img_filtro_mediana_s_p, []);
subplot(1, 2, 2);
imshow(img_filtro_mediana_gauss, []);

% 4 e 5 - Restauração de imagens - Filtro de mínimo
img_filtro_minimo_s_p = filtros_nao_lineares(img_ruido_sal_e_pimenta, "i", 3);
img_filtro_minimo_gauss = filtros_nao_lineares(img_ruido_gauss, "i", 3);

figure;
subplot(1, 2, 1);
imshow(img_filtro_minimo_s_p, []);
subplot(1, 2, 2);
imshow(img_filtro_minimo_gauss, []);

% 4 e 5 - Restauração de imagens - Filtro de máxima
img_filtro_maximo_s_p = filtros_nao_lineares(img_ruido_sal_e_pimenta, "j", 3);
img_filtro_maximo_gauss = filtros_nao_lineares(img_ruido_gauss, "j", 3);

figure;
subplot(1, 2, 1);
imshow(img_filtro_maximo_s_p, []);
subplot(1, 2, 2);
imshow(img_filtro_maximo_gauss, []);

% 4 e 5 - Restauração de imagens - Filtro de ponto médio
img_filtro_medio_s_p = filtros_nao_lineares(img_ruido_sal_e_pimenta, "p", 3);
img_filtro_medio_gauss = filtros_nao_lineares(img_ruido_gauss, "p", 3);

figure;
subplot(1, 2, 1);
imshow(img_filtro_medio_s_p, []);
subplot(1, 2, 2);
imshow(img_filtro_medio_gauss, []);

% Conclusão da 5
%
% Ruído Gaussiano usa os filtros lineares e o sal e pimenta os não lineares
%
%

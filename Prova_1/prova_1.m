pkg('load', 'image'); # Carregando a lib

img = imread('lena_color_256_rgb.tif');

out_hsi = converter_color_system(img, 'RGB-HSI');

figure, imshow(out_hsi);

out_yiq = converter_color_system(img, 'RGB-YIQ');

figure, imshow(out_yiq);

out_rgb = converter_color_system(out_yiq, 'YIQ-RGB');

figure, imshow(out_rgb);

img2 = imread('lena_gray_512.tif');

img_negativo = negativo(img2, 8);

imshow(img_negativo);

img_limiar = limiar(img2, 8, 128);

imshow(img_limiar);

img_gamma = gamma(img2, 1, 0.3);

imshow(img_gamma);

img_log = logaritmo(img2, 2);

imshow(img_log);

operacao_histograma(img2, 8, 'expansão');

out_edge = imfilter_edge(img2, 'prewitt');

imshow(out_edge);

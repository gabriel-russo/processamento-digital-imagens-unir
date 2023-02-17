img = imread('./lena_color_256.tif');

% Imagem original
figure, imshow(img);

% Convertendo a imagem rgb para hsi
img_hsi = rgb_to_hsi(img);

figure, imshow(img_hsi);

% Restaurando a imagem hsi para a original (rgb)
img_rgb = hsi_to_rgb(img_hsi);

figure, imshow(img_rgb);

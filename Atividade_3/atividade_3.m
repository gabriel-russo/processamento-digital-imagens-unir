pkg('load', 'image'); % Carregando a lib

img = imread('lena_gray_512.tif');

figure, imshow(img);

% MEAN BLUR ===
mask_mean_blur = 1/225 * ones(15, 15);

out_blur = convolucao(img, mask_mean_blur);

figure, imshow(out_blur);

% BORDER DETECTION ===
mask_border_detection = [-1 -1 0; -1 0 1; 0 1 1];

out_border = convolucao(img, mask_border_detection);

figure, imshow(out_border);

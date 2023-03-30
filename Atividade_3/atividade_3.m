img = imread('lena_gray_512.tif');

mask_mean_blur = 1/9 * [1 1 1; 1 1 1; 1 1 1];

mask_border_detection = [-1 -1 0; -1 0 1; 0 1 1];

out_blur = convolucao(img, mask_mean_blur);

out_border = convolucao(img, mask_border_detection);

figure, imshow(img);

figure, imshow(out_blur);

figure, imshow(out_border);

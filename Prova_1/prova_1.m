pkg('load', 'image'); % Carregando a lib

img = imread('lena_color_256_rgb.tif');

out_rgb_hsi = converter_color_system(img, 'RGB-HSI');

figure, imshow(out_rgb_hsi);

out_hsi_rgb = converter_color_system(out_rgb_hsi, 'HSI-RGB');

figure, imshow(out_hsi_rgb);

out_rgb_yiq = converter_color_system(img, 'RGB-YIQ');

figure, imshow(out_rgb_yiq);

out_yiq_rgb = converter_color_system(out_rgb_yiq, 'YIQ-RGB');

figure, imshow(out_yiq_rgb);

img2 = imread("lena_gray_512.tif");

out_edge_prewitt = imfilter_edge(img2, 'prewitt');
 
figure, imshow(out_edge_prewitt);

out_edge_roberts = imfilter_edge(img2, 'roberts');
 
figure, imshow(out_edge_roberts);

out_edge_sobel = imfilter_edge(img2, 'sobel');
 
figure, imshow(out_edge_sobel);

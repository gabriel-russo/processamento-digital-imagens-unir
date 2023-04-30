close all

img = imnoise(imread("lena_gray_512.tif"), 'gaussian');

title("Imagem Original com Ruido Gaussiano");
figure, imshow(img);

out_aritmetica = media_aritmetica(img, 3);

title("Media Aritmetica");
figure, imshow(out_aritmetica);

out_geometrica = media_geometrica(img, 3);

title("Media Geometrica");
figure, imshow(out_geometrica);

out_harmonica = media_harmonica(img, 3);

title("Media Harmonica");
figure, imshow(out_harmonica);

pkg('load', 'image'); # Carregando a lib

img = imread('lua.jpg');

mask = fspecial('prewitt');

img_borda = imfilter(img, mask);

img_borda = uint8(img_borda);

agucamento_de_borda = img_borda + img;

imshow([img agucamento_de_borda]);

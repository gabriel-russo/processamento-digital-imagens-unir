pkg load image;
f = imread('wirebond_mask.tif');
m = [-1 -1 -1; -1 8 -1; -1 -1 -1];
g = imfilter (im2double(f), m);
figure, imshow(g)
g = abs(g); % Valor absoluto
figure, imshow(g)
g = imfilter (im2double(f), m);
g(g<0) = 0; %valores positivos
T = max(g(:)); %Limiar MAX
g = g >= T;
figure, imshow(g)
g = imfilter (im2double(f), m);
g = g >= T;
figure, imshow(g)




f = imread('lena_gray_256.tif');
f = im2double(f);
mask_x = fspecial('prewitt');
Gx = conv2(double(f), mask_x, 'same');
Gy = conv2(double(f), mask_x', 'same');
M = sqrt(Gx.^2 + Gy.^2);
figure, imshow(M);
figure, imshow(im2bw(M/max(M(:)), .2));


f = imread('lena_gray_256.tif');
[gv, t] = edge(f, 'canny');
imshow(gv);

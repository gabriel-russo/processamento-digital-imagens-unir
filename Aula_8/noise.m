% Ruído uniforme
% Intervalo (A, B). default (0, 1)
% M e N - Linha e Coluna
pkg load image;
img = imread('lena_gray_256.tif');
img = im2double(img);
bins = 50;
a = 0;
b = 1;
M = 256; N = 256;
R = a + ( b - a ) * rand(M , N);
imhist(R, bins);
figure, imshow(R);
imgR = 0.8*img + 0.2*R;
figure, imshow(imgR);
figure, imhist(imgR);

% Ruído gaussian
% Intervalo (A, B); default (0, 1)
% Média A e desvio padrão B
% M e N - Linha e Coluna
a = 0;
b = 1;
M = 256; N = 256;
R = (a + b) * randn( M, N);
imhist(R, bins);
figure, imshow(R)
imgR = 0.9*img + 0.1*R;
figure, imshow(imgR);
figure, imhist(imgR);

% Ruído Sal e pimenta
% M e N - Linha e Coluna
M = 256; N = 256;
a = 0.01;
b= 0.02;
R(1:M, 1:N) = 0.0 ;
X = rand( M, N ) ;
R ( X <= a ) = 0 ;
u = a + b ;
R ( X > a & X <= u ) = 1 ;
img ( X <= a ) = 0 ;
imhist(R, bins);
imgR = R*0.2 + img*0.8;
figure, imshow(imgR);
figure, imhist(imgR);

% Ruído Lognormal
% M e N - Linha e Coluna
% Valores defaults são A = 1 and B = 0.25
M = 256; N = 256;
a = 1;
b= 0.25;
bins = 50;
R = exp( b * randn(M, N) + a) ;
imhist(R, bins);
img = imread('lena_gray_256.tif');
img = im2double(img);
imgR = R*0.1 + img*0.9;
figure, imshow(imgR);
figure, imhist(imgR);

% Ruído de Rayleigh
% M e N - Linha e Coluna
% Valores defaults são A = 0 and B = 1
M = 256; N = 256;
a = 0;
b= 1;
bins = 50;
R = a + (-b * log(1 - rand(M, N))).^0.5;
imhist(R, bins);
figure, imshow(R);
imgR = 0.2*R + 0.8 * img;
figure, imshow(imgR);


% Ruído Exponencial
% M e N - Linha e Coluna
% Valor default é A = 1
a = 1;
M = 256; N = 256;
k = -1/a;
R = k*log(1-rand(M, N));
imhist(R, bins);
figure, imshow(R);
imgR = 0.1*R + 0.9*img;
figure, imshow(imgR);

% Ruído de Erlang (gama)
% M e N - Linha e Coluna
% Valores defaults são A = 2 e B = 5;
a = 2;
b = 5;
M = 256; N = 256;
k = -1/a;
R = zeros(M, N);
for j = 1:b
  R = R + k*log(1 - rand(M, N));
end
imhist(R, bins);
figure, imshow(R);
imgR = 0.1*R + 0.9*img;
figure, imshow(imgR);

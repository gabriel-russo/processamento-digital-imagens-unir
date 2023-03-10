pkg('load', 'image'); # Carregando a lib

% ################### EQUALIZAÇÃO DE HISTOGRAMA #########################

L = 8;

% ROW | COLUMNS
R = 32;
C = 32;

% T(0)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 ) );
fprintf("T(0) = %i \n", T)
% T(1)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 ) );
fprintf("T(1) = %i \n", T)

% T(2)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 + 141 ) );
fprintf("T(2) = %i \n", T)

% T(3)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 + 141 + 90 ) );
fprintf("T(3) = %i \n", T)

% T(4)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 + 141 + 90 + 156 ) );
fprintf("T(4) = %i \n", T)

% T(5)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 + 141 + 90 + 156 + 245 ) );
fprintf("T(5) = %i \n", T)

% T(6)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 + 141 + 90 + 156 + 245 + 122 ) );
fprintf("T(6) = %i \n", T)

% T(7)
T =  round( ( L - 1 ) / ( R * C ) * ( 112 + 83 + 141 + 90 + 156 + 245 + 122 + 75 ) );
fprintf("T(7) = %i \n", T)

% ############### EQUALIZAÇÃO DE HISTOGRAMA - FUNÇÃO DO MATLAB #######################
img = imread('lena_gray_512.tif');

img_equalizada = histeq(img);

figure, imshow(img);
figure, imshow(img_equalizada);

% ################### PSEUDO COR #########################

img = imread('lena_gray_512.tif');

R = zeros(size(img));
G = zeros(size(img));
B = zeros(size(img));

figure, imhist(img);

R(img > 0 & img <= 75) = 0;   R(img > 75 & img <= 150) = 0;   R(img > 150 & img <= 255) = 128;
G(img > 0 & img <= 75) = 0;   G(img > 75 & img <= 150) = 128; G(img > 150 & img <= 255) = 0;
B(img > 0 & img <= 75) = 128; B(img > 75 & img <= 150) = 0;   B(img > 150 & img <= 255) = 0;

img_pseudo_color = cat(3, R, G, B);

figure, imshow(img_pseudo_color);

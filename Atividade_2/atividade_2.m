pkg('load', 'image'); # Carregando a lib

% ############################ QUESTÃO 4 #########################################
L = 5;

% ROW | COLUMNS
Rmin = 0;
Rmax = 4;

fprintf("################### Expansão de histograma ###################\n")

A = [0 1 1 3; 2 4 4 2; 2 1 0 3; 0 1 2 4]

expansao_de_histograma(A, 5)

fprintf("################### Equalização de histograma ###################\n")

% ROW | COLUMNS
R = 4;
C = 4;

% T(0)
T =  round( ( L - 1 ) / ( R * C ) * ( 3 ) );
fprintf("T(0) = %i \n", T)

% T(1)
T =  round( ( L - 1 ) / ( R * C ) * ( 3 + 4 ) );
fprintf("T(1) = %i \n", T)

% T(2)
T =  round( ( L - 1 ) / ( R * C ) * ( 3 + 4 + 4 ) );
fprintf("T(2) = %i \n", T)

% T(3)
T =  round( ( L - 1 ) / ( R * C ) * ( 3 + 4 + 4 + 2 ) );
fprintf("T(3) = %i \n", T)

% T(4)
T =  round( ( L - 1 ) / ( R * C ) * ( 3 + 4 + 4 + 2 + 3 ) );
fprintf("T(4) = %i \n", T)

% ############################ QUESTÃO 7 #########################################

img = imread('lena_gray_512.tif');
img_pseudo_cor = pseudo_cor(img);

figure, imshow(img_pseudo_cor);

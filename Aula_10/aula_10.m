close all

% Limiarização por movimentação de médias =======
img = imread("text_image.tif");

g = movingthresh(img, 20, 0.5);

imshow(g);

% Erosão ====================================
A = imread("wirebond_mask.tif");
se = strel("square", 11);
A2 = imerode(A, se);
figure, imshow(A2);

se = strel("square", 15);
A3 = imerode(A, se);
figure, imshow(A3);

se = strel("square", 45);
A4 = imerode(A, se);
figure, imshow(A4);

% Dilatação =================================
A = imread("wirebond_mask.tif");
subplot(2, 2, 1);
imshow(A);
title("Imagem Original");

se = strel("square", 11);
A2 = imdilate(A, se);
subplot(2, 2, 2);
imshow(A2);
title("ES quadrado = 11");

se = strel("square", 15);
A3 = imdilate(A, se);
subplot(2, 2, 3);
imshow(A3);
title("ES quadrado = 15");

se = strel("square", 45);
A4 = imdilate(A, se);
subplot(2, 2, 4);
imshow(A4);
title("ES quadrado = 45");

% Abertura e Fechamento =====================
A = imread("noisy_fingerprint.tif");
A = im2bw(A);
subplot(2, 2, 1);
imshow(A);
title("Imagem Original");

se = strel("square", 3);

% Imagem erodida
fo = imerode(A, se);
subplot(2, 2, 2);
imshow(fo);
title("Imagem Erodida");

% Abertura de A
fo = imopen(A, se);
subplot(2, 2, 3);
imshow(fo);
title("Abertura de A");

% Dilatação da abertura
fod = imdilate(fo, se);
subplot(2, 2, 4);
imshow(fod);
title("Dilatação da abertura");

% Fechamento da abertura
foc = imclose(fo, se);
subplot(2, 2, 5);
imshow(foc);
title("Fechamento da abertura");

% Extração de fronteiras ====================
f = imread("shadow.tif");
subplot(2, 2, 1);
imshow(f);
title("Imagem Original");

% Erosão da imagem
se = strel("square", 3);
fe = imerode(f, se);
subplot(2, 2, 2);
imshow(fe);
title("Imagem Erodida");

% Diferença entre a imagem original
% e a imagem erodida
idif = f - fe;
subplot(2, 2, 3);
imshow(idif);
title("Diferença entre as imagens");

% Preenchimento de buracos ==================
f = imread("holes.tif");
f = im2bw(f);
subplot(1, 2, 1);
imshow(f);
title("Imagem Original");

fp = imfill(f, "holes");
subplot(1, 2, 2);
imshow(fp);
title("Imagem preenchida");

% Afinamento ================================
f = imread("fingerprint_cleaned.tif");
subplot(1, 3, 1);
imshow(f);
title("Imagem Original");

g1 = bwmorph(f, 'thin', 1);
subplot(1, 3, 2);
imshow(g1);
title("Algo executado 1 vez");

g2 = bwmorph(f, 'thin', 2);
subplot(1, 3, 3);
imshow(g2);
title("Algo executado 2 vez");

% Espesssamento =============================
f = imread("fingerprint_cleaned.tif");
subplot(1, 2, 1);
imshow(f);
title("Imagem Original");

g = bwmorph(f, 'thicken', 1);
subplot(1, 2, 2);
imshow(g);
title("Imagem com espessura aumentada");

% Esqueleto ===================================
f = imread("hands.tif");
subplot(1, 3, 1);
imshow(f);
title("Imagem Original");

fs = bwmorph(f, 'skel', Inf);
subplot(1, 3, 2);
imshow(fs);
title("Esqueleto obtido usando a função bwmorph");

for k=1:5
   fs = fs & ~ endpoints(fs); 
end

subplot(1, 3, 3);
imshow(fs);
title("Resultado do esqueleto após a função endpoints");

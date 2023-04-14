imgA = imread("fundo.jpg");

imgB = imread("lena_gray_512.tif");

out = dissolve_naouniforme(imgA, imgB);

figure, imshow(out);

fig1 = imread("f1.tif");
fig2 = imread("f2.tif");

figure, imshow(abs(fig1-fig2));

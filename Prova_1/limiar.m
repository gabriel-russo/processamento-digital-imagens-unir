function img = limiar(img, bitdepth, T)

    L = 2^bitdepth - 1;

    img(img <= T) = 0;
    img(img > T) = L;

end

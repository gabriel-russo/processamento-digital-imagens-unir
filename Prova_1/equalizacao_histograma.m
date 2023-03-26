function img = equalizacao_histograma(img, bitdepth)

    L = 2^bitdepth - 1;

    [rows, columns] = size(img);

    somatoria = 0;

    for l = 0:bitdepth - 1
        nl = length( img(img == 2^l) );

        somatoria = somatoria + nl;

        r = round( ( L / ( rows * columns ) ) * somatoria );

        img(img == nl) = r;

    end
end

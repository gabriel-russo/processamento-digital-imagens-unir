function [img_expansao] = expansao_de_histograma(img, L)

    L = L - 1;

    [linha, coluna] = size(img);

    img = im2double(img);

    img_expansao = img;

    rmax = max(img);
    rmin = min(img);

    for i = 1:linha

        for j = 1:coluna

            r = img(i, j);

            img_expansao(i, j) = round( (r - rmin) / (rmax - rmin) * L );

        end
    end

    img_expansao = uint8(img_expansao);

end

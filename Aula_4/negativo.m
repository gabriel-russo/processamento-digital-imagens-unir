function [img] = negativo(filepath, bitdepth)

    img = imread(filepath);

    L = 2^bitdepth - 1;

    [linha, coluna] = size(img);

    for i = 1:linha
        for j = 1:coluna

           img(i, j) = L - img(i, j);

        end
    end

end

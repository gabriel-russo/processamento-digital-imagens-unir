function img = negativo(img, bitdepth)

    [rows, columns] = size(img);

    L = 2^bitdepth - 1;

    for i = 1:rows
        for j = 1:columns
            img(i, j) = L - img(i, j);
        end
    end

function img = logaritmo(img, c)

    img = im2double(img);

    [rows, columns] = size(img);

    for i = 1: rows

        for j = 1: columns

            img(i, j) = c * log( 1 + img(i, j));

        end
    end
end

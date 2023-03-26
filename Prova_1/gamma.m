function img = gamma(img, c, epsolon)

    img = im2double(img);

    [rows, columns] = size(img);

    for i = 1: rows

        for j = 1: columns

            img(i, j) = c * img(i, j)^epsolon;

        end
    end
end

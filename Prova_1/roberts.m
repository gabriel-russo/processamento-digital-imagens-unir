function img = roberts(img)

    [rows, columns] = size(img);

    for i = 1:rows
        for j = 1:columns
            img(i, j) = abs( img(i, j) - img(i+1, j+1) ) + abs( img(i+1, j) - img(i, j+1))
        end
    end
end

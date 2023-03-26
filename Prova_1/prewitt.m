function img = prewitt(img)

    img = im2double(img);

    img = padarray(img, [2 2]);

    [rows, columns] = size(img)

    for i = 2:rows-1
        for j = 2:columns-1
            img(i, j) = abs( img(i+1, j-1) + img(i+1,j) + img(i+1,j+1) - img(i-1,j-1) - img(i-1,j)- img(i-1,j+1)) + abs(img(i-1,j+1)+img(i,j+1)+img(i+1,j+1)-img(i-1,j-1)-img(i,j-1)-img(i+1,j-1));
        end
    end
end

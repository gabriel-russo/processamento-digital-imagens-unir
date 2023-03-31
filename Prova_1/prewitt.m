function img_out = prewitt(img)

    img = im2double(img);

    img = padarray(img, [1 1]);

    [rows, columns] = size(img);

    for i = 2:rows-1
        for j = 2:columns-1
            img_out(i, j) = abs( img(i+1, j-1) + img(i+1,j) + img(i+1,j+1) - img(i-1,j-1) - img(i-1,j)- img(i-1,j+1)) + abs(img(i-1,j+1)+img(i,j+1)+img(i+1,j+1)-img(i-1,j-1)-img(i,j-1)-img(i+1,j-1));
        end
    end
end

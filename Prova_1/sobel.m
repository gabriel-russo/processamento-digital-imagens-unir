function img_out = sobel(img)

    [rows, columns] = size(img);

    img = padarray(img, [1 1]);
    
    for i = 2:rows
        for j = 2:columns
            img_out(i, j) = abs( img(i+1, j-1) + 2*img(i+1,j) + img(i+1,j+1) - img(i-1,j-1) - 2*img(i-1,j)- img(i-1,j+1)) + abs(img(i-1,j+1)+img(i,j+1)+img(i+1,j+1)-img(i-1,j-1)-2*img(i,j-1)-img(i+1,j-1));
        end
    end
end

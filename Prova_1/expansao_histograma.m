function img = expansao_histograma(img, bitdepth)

%    img = im2double(img);

    [rows, columns] = size(img);

    rmax = max(max(img))
    rmin = min(min(img))

    L = 2^bitdepth - 1

    for i = 1:rows

        for j = 1:columns
            s = round( ( ( img(i, j) - rmin ) / ( rmax - rmin ) ) * L );
            img(i, j) = s;
        end
    end
end

function [S] = saturacao(img)

    img = im2double(img);

    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    S = 1 - ( ( 3 ./ ( ( R + G + B) + eps ) ) .* min(img, [], 3) );

end

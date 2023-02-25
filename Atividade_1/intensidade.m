function [I] = intensidade(img)

    img = im2double(img);

    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    I = (1/3) * ( R + G + B);

end

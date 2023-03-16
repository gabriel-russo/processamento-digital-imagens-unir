function [img_pseudo_color] = pseudo_cor(img)

    R = zeros(size(img));
    G = zeros(size(img));
    B = zeros(size(img));

    R(img > 0 & img <= 75) = 0;   R(img > 75 & img <= 150) = 0;   R(img > 150 & img <= 255) = 128;
    G(img > 0 & img <= 75) = 0;   G(img > 75 & img <= 150) = 128; G(img > 150 & img <= 255) = 0;
    B(img > 0 & img <= 75) = 128; B(img > 75 & img <= 150) = 0;   B(img > 150 & img <= 255) = 0;

    img_pseudo_color = cat(3, R, G, B);

end

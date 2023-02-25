function [img] = yiq_to_rgb(rgb)

    rgb = im2double(rgb);

    y = rgb(:, :, 1);
    i = rgb(:, :, 2);
    q = rgb(:, :, 3);

    r = 1.000 * y + 0.956 * i + 0.621 * q;
    g = 1.000 * y - 0.272 * i - 0.647 * q;
    b = 1.000 * y - 1.106 * i + 1.703 * q;

    img = cat(3, r, g, b);

end
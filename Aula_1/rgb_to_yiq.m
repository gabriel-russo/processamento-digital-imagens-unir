function [img] = rgb_to_yiq(rgb)

    rgb = im2double(rgb);

    r = rgb(:, :, 1);
    g = rgb(:, :, 2);
    b = rgb(:, :, 3);

    y = 0.299 * r + 0.587 * g + 0.114 * b;
    i = 0.596 * r - 0.274 * g - 0.322 * b;
    q = 0.211 * r - 0.523 * g + 0.312 * b;

    img = cat(3, y, i, q);

end
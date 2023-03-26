function img_out = yiq_rgb(img_in)

    Y = img_in(:, :, 1);
    I = img_in(:, :, 2);
    Q = img_in(:, :, 3);

    R = 1.000 * Y + 0.956 * I + 0.621 * Q;
    G = 1.000 * Y - 0.272 * I - 0.647 * Q;
    B = 1.000 * Y - 1.106 * I + 1.703 * Q;

    img_out = cat(3, R, G, B);

%    img_out = uint8(img_out);

end

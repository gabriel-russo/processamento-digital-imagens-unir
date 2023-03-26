function img_out = rgb_yiq(img_in)

    img = im2double(img_in);

    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    Y = 0.299 * R + 0.587 * G + 0.114 * B;
    I = 0.596 * R - 0.274 * G - 0.322 * B;
    Q = 0.211 * R - 0.523 * G + 0.312 * B;

    img_out = cat(3, Y, I, Q);

end

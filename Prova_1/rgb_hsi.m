function img_out = rgb_hsi(img_in)

    img = im2double(img_in);

    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    H = acosd( ( 0.5 * ( ( R - G ) + ( R - B) ) ) ./ ( ( (R - G)^2 + ( R - B) * ( G - B) ) ^ 0.5 ));

%    H ( B <= G ) = teta;
    H ( B > G ) = 360 - H(B > G);

    S = ( 1 - ( 3 ./ ( R + G + B) ) .* min(img, [], 3) );

    I = ( 1/3 .* ( R + G + B ) );

    img_out = cat(3, H, S, I);

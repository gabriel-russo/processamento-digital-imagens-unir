function [H] = hue(img)

    img = im2double(img);

    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    numerador = (0.5 .* ( (R-G) + (R-B) ) );

    denominador = ( ( (R-G) .^2) + ( (R-B) .* (G-B) ) ) .^0.5 ;

    H = acosd( (  numerador ./ ( denominador + eps ) ) );

    H(B > G) = 360 - H(B > G);

    H = H/360;

end

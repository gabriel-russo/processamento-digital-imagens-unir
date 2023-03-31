function [img_out] = hsi_rgb(img_in)

    H = img_in(:, :, 1);
    S = img_in(:, :, 2);
    I = img_in(:, :, 3);
    
    R = zeros(size(H));
    G = zeros(size(S));
    B = zeros(size(I));
    
    H = H .* 360;
    
    % PARA O SETOR DE 0° A 119°
    B(H<120) = I(H<120) .* (1 - S(H<120));
    R(H<120) = I(H<120) .* (1 + ( S(H<120) .* cosd(H(H<120)) ) ./ (cosd(60 - H(H<120))) );
    G(H<120) = 3 .* I(H<120) - (R(H<120) + B(H<120));

    % PARA O SETOR DE 120° ATÉ 239°
    H1 = H - 120;
    R(H>=120&H<240) = I(H>=120&H<240) .* (1 - S(H>=120&H<240));
    G(H>=120&H<240) = I(H>=120&H<240) .* (1 + ( S(H>=120&H<240) .* cosd(H1(H>=120&H<240)) ./ cosd(60 - H1(H>=120&H<240)) ));
    B(H>=120&H<240) = 3 .* I(H>=120&H<240) - (R(H>=120&H<240) + G(H>=120&H<240));

    % PARA O SETOR DE 240° A 359°
    H1 = H - 240;
    G(H>=240&H<360) = I(H>=240&H<360) .* (1 - S(H>=240&H<360));
    B(H>=240&H<360) = I(H>=240&H<360) .* (1 + ( ( S(H>=240&H<360) .* cosd(H1(H>=240&H<360)) ) ./ cosd(60 - H1(H>=240&H<360)) ) );
    R(H>=240&H<360) = 3 .* I(H>=240&H<360) - (G(H>=240&H<360) + B(H>=240&H<360));

    img_out = cat(3, R, G, B);

end
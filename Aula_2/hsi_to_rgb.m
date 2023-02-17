function [img_converted] = hsi_to_rgb(img)

    H = img(:, :, 1);
    S = img(:, :, 2);
    I = img(:, :, 3);

    R = zeros(size(H));
    G = zeros(size(S));
    B = zeros(size(I));

    H = H .* 360;

    % caso o H do ponto estiver no setor 0° a 119°, realize os seguintes calculos de conversão:
    B(H<120) = I(H<120) .* (1 - S(H<120));
    R(H<120) = I(H<120) .*  ( 1 + ( S(H<120) .* cosd(H(H<120)) )./ (cosd(60 - H(H<120))) ) ;
    G(H<120) = 3 .* I(H<120) - (R(H<120) + B(H<120));

    % caso o H do ponto estiver no setor 120° a 239°, realize os seguintes calculos de conversão:
    H1 = H - 120;
    R(H>=120&H<240) = I(H>=120&H<240) .* (1 - S(H>=120&H<240));
    G(H>=120&H<240) = I(H>=120&H<240) .* ( 1 + ( S(H>=120&H<240) .* cosd(H1(H>=120&H<240))./ cosd(60 - H1(H>=120&H<240)) ) );
    B(H>=120&H<240) = 3 .* I(H>=120&H<240) - (R(H>=120&H<240) + G(H>=120&H<240));

    % caso o H do ponto estiver no setor 240° a 259°, realize os seguintes calculos de conversão:
    H1 = H - 240;
    G(H>=240&H<360) = I(H>=240&H<360) .* (1 - S(H>=240&H<360));
    B(H>=240&H<360) = I(H>=240&H<360) .* ( 1 + ( S(H>=240&H<360) .* cosd (H1(H>=240&H<360)) )./ (cosd(60 - H1(H>=240&H<360)))  );
    R(H>=240&H<360) = 3.*I(H>=240&H<360) - (G(H>=240&H<360) + B(H>=240&H<360));

    img_converted = zeros(size(img));
    img_converted = cat(3, R, G, B);

end

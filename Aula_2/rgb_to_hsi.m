function [img_converted] = rgb_to_hsi(img)

    H = hue(img);
    S = saturacao(img);
    I = intensidade(img);

    img_converted = cat(3, H, S, I);

end

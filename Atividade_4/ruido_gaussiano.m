function g = ruido_gaussiano(f)
    
    f = im2double(f);

    media = 0;
    desvio_padrao = 1;

    n = media + desvio_padrao * randn(size(f));

    g = (0.9 * f) + (0.1 * n);

end
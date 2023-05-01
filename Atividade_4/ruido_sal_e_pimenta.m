function g = ruido_sal_e_pimenta(f)

    pa = randi([0, 255], 1, 1);

    pb = randi([0, 255], 1, 1);

    n = randi([0, 255], size(f));

    f(n == pa) = 0;

    f(n == pb) = 255;

    g = uint8(f);

end
function img_out = gerar_ruido_aditivo(img_in, ruido)

    switch(ruido)
        case "gaussiano"
            img_out = ruido_gaussiano(img_in);
        case "sal & pimenta"
            img_out = ruido_sal_e_pimenta(img_in);
    end

end

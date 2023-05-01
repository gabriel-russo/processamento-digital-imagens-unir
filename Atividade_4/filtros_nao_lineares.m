function img_out = filtros_nao_lineares(img_in, filtro, tamanho_mascara)

    switch(filtro)
        case "m"
            img_out = mediana(img_in, tamanho_mascara);
        case "i"
            img_out = minimo(img_in, tamanho_mascara);
        case "j"
            img_out = maximo(img_in, tamanho_mascara);
        case "p"
            img_out = medio(img_in, tamanho_mascara);
    end

end

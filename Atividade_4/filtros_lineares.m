function img_out = filtros_lineares(img_in, filtro, tamanho_mascara)

    switch(filtro)
        case "m"
            img_out = media_aritmetica(img_in, tamanho_mascara);
        case "g"
            img_out = media_geometrica(img_in, tamanho_mascara);
        case "h"
            img_out = media_harmonica(img_in, tamanho_mascara);
    end

end

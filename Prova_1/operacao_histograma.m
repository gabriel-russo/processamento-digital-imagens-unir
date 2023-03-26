function operacao_histograma(img, bitdepth, operacao)

    switch(operacao)

        case 'expansão'
            img_op = expansao_histograma(img, bitdepth);
        case 'equalização'
            img_op = equalizacao_histograma(img, bitdepth);
    end

    figure, imhist(img)
    figure, imhist(img_op)

end

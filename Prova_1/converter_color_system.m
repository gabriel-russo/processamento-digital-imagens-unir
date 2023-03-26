function img_out = converter_color_system(f, IN_OUT)

    switch(IN_OUT)
        case 'RGB-HSI'
            img_out = rgb_hsi(f);
        case 'RGB-YIQ'
            img_out = rgb_yiq(f);
        case 'HSI-RGB'
        case 'YIQ-RGB'
            img_out = yiq_rgb(f);
        otherwise
            fprintf("Essa conversão não existe");
    end

end

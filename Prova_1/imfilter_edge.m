function img_out = imfilter_edge(img, gradient)

    switch(gradient)
            case 'roberts'
                img_out = roberts(img);
            case 'prewitt'
                img_out = prewitt(img);
            case 'sobel'
                img_out = sobel(img);
            otherwise
                fprintf("Essa conversão não existe");
    end

end

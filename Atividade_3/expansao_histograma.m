function [img_saida] = expansao_histograma(img)
    img = im2double(img);
    [lin col] = size(img);
    r_min = min(img(:));
    L=5;
    r_max = max(img(:));
    img_saida = zeros(size(img));
    for (i=1:lin)
        for(j=1:col)
            r= img(i,j);
            %t = round(((r-r_min)/(r_max-r_min))*(L-1));
            t = round(((r-r_min)*255)/(r_max-r_min));
            img_saida(i,j) = t;
        endfor
    endfor
    img_saida = uint8(img_saida);
endfunction

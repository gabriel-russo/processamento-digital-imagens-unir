function img_out = rebatimento_90graus(img_in)

    [lin, col] = size(img_in);
    
    img_out = zeros(lin, col);

    for i = 1:lin
        for j = 1:col

            img_out(j, i) = img_in(i, j);

        end
    end

    img_out = uint8(img_out);
    
end

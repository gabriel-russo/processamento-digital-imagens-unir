function img_out = dissolve_cruzado_uniforme(imgA, imgB, t)

    if size(imgA) ~= size(imgB)
       error("Imagens com tamanho diferente, saindo..."); 
    end

    if t < 0 || t > 1
       error("o parâmetro 't' deve ser entre 0 e 1"); 
    end

    [lin, col] = size(imgA);
    
    img_out = zeros(lin, col);

    for i = 1:lin
       for j = 1:col
    
           img_out(i, j) = ((1 - t) * imgA(i, j)) + (t * imgB(i, j));

       end
    end

    img_out = uint8(img_out);

end
function [img_out] = dissolve_naouniforme(imgA, imgB)

    [R, C] = size(imgA);

    t = zeros(R, C);

    for i = 1:R
       for j = 1:C

           t(i, j) = i / (R - 1);
           
       end
    end

    for i = 1:R
        for j = 1:C

            img_out(i, j) = (( 1-t(i,j)) * imgA(i, j)) + (t(i,j) * imgB(i,j));

        end
    end

end

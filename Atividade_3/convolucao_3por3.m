function [output] = convolucao_3por3(input, mask)

    input = im2double(input);

    m = padarray(input, [1 1]);

    mask = fliplr(flipud(mask));

    [lin, col] = size(m);

    output = zeros(lin, col);

    for i = 2:lin-1
       for j = 2:col-1
      
           matrix_kernel = [m(i-1,j-1)  m(i-1,j) m(i-1,j+1);
                            m(i,j-1)    m(i,j)   m(i, j+1);
                            m(i+1, j-1) m(i+1,j) m(i+1, j+1)];

           applied_mask = matrix_kernel .* mask;

           filtro = sum(applied_mask, 'all');

           output(i,j) = filtro;

       end
    end
end

function [output] = convolucao(input, mask)

    input = im2double(input);

    % Tamanho da máscara
    [m_lin, m_col] = size(mask);

    % Tamanho do padding na matriz - LINHA
    m_middle_lin = ceil(m_lin/2);

    % Tamanho do padding na matriz - COLUNA
    m_middle_col = ceil(m_col/2);

    % Adicionando padding na imagem
    m = padarray(input, [(m_middle_lin - 1) (m_middle_col - 1)]);

    % Inversão da máscara
    mask = fliplr(flipud(mask));

    % Tamanho da matriz COM os paddings
    [lin, col] = size(m);

    % Matriz de substituição do tamanho da matriz COM os paddings
    output = zeros(lin, col);

    for i = m_middle_lin:lin - (m_middle_lin - 1)
       for j = m_middle_col:col - (m_middle_col - 1)

           for k = 1:m_lin
              for l = 1:m_col

                % ====== i - m_middle_lin + k ======
                %   "i - m_middle_lin" vai fazer o "ponteiro" do pixel central (i,j) subir
                %    ate a primeira linha da mascara que esta exatamente em cima do mesmo,
                %    e o "+k" irá fazer ele andar, nesse caso pra baixo.
                %
                % ====== j - m_middle_col + l ======
                %    "j - m_middle_col" vai fazer exatamente a mesma coisa, ele vai ir pra
                %    primeira coluna da mascara de acordo com o pixel central (i,j), e o "+l"
                %    vai fazer ele andar para a direita

                output(i, j) = output(i, j) + mask(k, l) * m((i - m_middle_lin + k), (j - m_middle_col + l));

              end
           end

       end
    end
end

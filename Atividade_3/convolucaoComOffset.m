function g = convolucaoComOffset(f, h, offset)
    % f: imagem de entrada
    % h: máscara (kernel) de convolução
    % offset: valor a ser adicionado após a convolução
    
    % Converte a imagem de entrada para double
    f = im2double(f);
    
    % Inicializa a imagem resultante
    g = zeros(size(f));
    
    % Calcula o tamanho do padding necessário
    p = floor(size(h,1)/2);
    
    % Adiciona o padding à imagem
    fPad = padarray(f, [p p], 'replicate', 'both');
    
    % Percorre a imagem, aplicando a máscara (kernel) de convolução
    for i = 1:size(f,1)
      for j = 1:size(f,2)
        
        % Seleciona a região da imagem correspondente ao kernel centrado em (i,j)
        regiao = fPad(i:i+2*p, j:j+2*p);
        
        % Verifica se a região e a máscara têm o mesmo tamanho
        if all(size(regiao) == size(h))
          
          % Aplica a máscara (kernel) na região
          g(i,j) = sum(sum(regiao .* h));
          
        else
          
          % Se a região e a máscara não tiverem o mesmo tamanho, define g(i,j) como o offset
          g(i,j) = offset;
          
        end
        
      end
    end

end

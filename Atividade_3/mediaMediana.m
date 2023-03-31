function outImg = mediaMediana(img, filtro)
% img: imagem de entrada
% n: tamanho do filtro (deve ser ímpar)
% filtro: 'media' para filtro de média ou 'mediana' para filtro de mediana
n=3

if ~strcmp(filtro, 'media') && ~strcmp(filtro, 'mediana')
  error('Filtro inválido. Use "media" ou "mediana"');
end

% Adiciona bordas à imagem de entrada
border_size = floor(n/2);
img = padarray(img, [border_size border_size], 'symmetric');

% Cria uma matriz de zeros para a imagem de saída
outImg = zeros(size(img));

for i = 1+border_size:size(img,1)-border_size
  for j = 1+border_size:size(img,2)-border_size
    % Extrai submatriz centrada no pixel (i,j)
    submat = img(i-border_size:i+border_size, j-border_size:j+border_size);

    % Calcula média ou mediana dos valores da submatriz
    if strcmp(filtro, 'media')
      valor = mean(submat(:));
    else
      valor = median(submat(:));
    end

    % Armazena o valor calculado na posição correspondente na imagem de saída
    outImg(i,j) = valor;
  end
end

% Remove bordas da imagem de saída
outImg = outImg(1+border_size:size(outImg,1)-border_size, 1+border_size:size(outImg,2)-border_size);

end

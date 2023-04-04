function outImg = equalizarHistograma(img)
% img: imagem de entrada

% Calcula o histograma da imagem de entrada
histo = zeros(256,1);
for i = 1:size(img,1)
  for j = 1:size(img,2)
    histo(img(i,j)+1) = histo(img(i,j)+1) + 1;
  end
end

% Calcula a função de distribuição acumulada (CDF) do histograma
cdf = cumsum(histo) / numel(img);

% Mapeia os valores de intensidade da imagem original para novos valores
outImg = uint8(255 * cdf(img+1));

end

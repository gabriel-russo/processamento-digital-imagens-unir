function outImg = controleContrasteAdaptativo(img, n, k)
% img: imagem de entrada
% n: tamanho da janela (n x n) para o cálculo do desvio padrão local
% k: fator de ganho para ajustar a intensidade da imagem resultante

% Converte a imagem de entrada para double
img = im2double(img);

% Calcula o tamanho do padding necessário
p = floor(n/2);

% Adiciona o padding à imagem
imgPad = padarray(img, [p p], 'replicate', 'both');

% Inicializa a imagem resultante
outImg = zeros(size(img));

% Percorre a imagem, calculando a média e o desvio padrão local
for i = 1:size(img,1)
  for j = 1:size(img,2)
    
    % Seleciona a região da imagem correspondente à janela (n x n) centrada em (i,j)
    regiao = imgPad(i:i+2*p, j:j+2*p);
    
    % Calcula a média e o desvio padrão da região
    media = mean(regiao(:));
    desvio = std(regiao(:));
    
    % Aplica a transformação não linear na região, ajustando a intensidade com o fator de ganho k
    regiao = (regiao - media) * (k * desvio / 0.5) + media;
    
    % Atribui a região resultante na posição correspondente da imagem resultante
    outImg(i,j) = regiao(p+1,p+1);
  end
end

% Converte a imagem resultante de volta para uint8
outImg = uint8(255 * outImg);

end

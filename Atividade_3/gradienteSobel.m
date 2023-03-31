function [Gx, Gy, G] = gradienteSobel(img)
% img: imagem de entrada

% Converte a imagem de entrada para double
img = im2double(img);

% Define os filtros de Sobel em x e y
filtroX = [-1 0 1; -2 0 2; -1 0 1];
filtroY = [-1 -2 -1; 0 0 0; 1 2 1];

% Calcula o tamanho do padding necessário
p = floor(size(filtroX,1)/2);

% Adiciona o padding à imagem
imgPad = padarray(img, [p p], 'replicate', 'both');

% Inicializa as imagens resultantes
Gx = zeros(size(img));
Gy = zeros(size(img));
G = zeros(size(img));

% Percorre a imagem, aplicando os filtros de Sobel em x e y
for i = 1:size(img,1)
  for j = 1:size(img,2)
    
    % Seleciona a região da imagem correspondente ao filtro (3 x 3) centrado em (i,j)
    regiao = imgPad(i:i+2*p, j:j+2*p);
    
    % Aplica o filtro de Sobel em x e y na região
    Gx(i,j) = sum(sum(regiao .* filtroX));
    Gy(i,j) = sum(sum(regiao .* filtroY));
    
    % Calcula a magnitude do gradiente na posição (i,j)
    G(i,j) = sqrt(Gx(i,j)^2 + Gy(i,j)^2);
    
  end
end

% Converte as imagens resultantes de volta para uint8
Gx = uint8(255 * Gx / max(Gx(:)));
Gy = uint8(255 * Gy / max(Gy(:)));
G = uint8(255 * G / max(G(:)));

end
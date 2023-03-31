function [nega] = converter_negative(img,bp)
  L = 2^bp -1;

  [Linha, Coluna] = size(img);
  for i=1: Linha
    for j=1: Coluna
      nega(i,j) = L - img(i,j);
    endfor
  endfor
endfunction
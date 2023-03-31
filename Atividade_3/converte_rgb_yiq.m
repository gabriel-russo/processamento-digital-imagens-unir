function [yiq] = converte_rgb_yiq(Im)
  Im = im2double(Im);
  R = Im(:,:,1);
  G = Im(:,:,2);
  B = Im(:,:,3);
  
  Y= 0.299.*R +0.587.*G + 0.114.*B;
  I= 0.596*R-0.274*G-0.322.*B;
  Q= 0.211 .*R - 0.523 .*G + 0.312 .*B;

  yiq = cat(3, Y, I, Q);

endfunction

function [rgb] = converte_yiq_rgb(Im)
  Im = im2double(Im);
  Y = Im(:,:,1);
  I = Im(:,:,2);
  Q = Im(:,:,3);
  
  R= 1.*Y + 0.956 .*I + 0.621 .*Q;
  G= 1.*Y - 0.272 .*I - 0.647 .*Q;
  B= 1.*Y - 1.106 .*I + 1.703 .*Q;

  rgb = cat(3, R, B, G);

endfunction

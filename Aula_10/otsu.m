function T = otsu(img)
  h = imhist(img, 256); % 256 níveis de intensidade
  p = h/sum(h); %Normalização do histograma
  omega = cumsum(p); %Soma acumulada
  mu = cumsum(p.* [1:256]'); %média acumulada
  muT = mu(end); %média global  
  sigma_b = (muT .* omega - mu).^2 ./ (omega .* (1 - omega)); %variância entre as classes
  m = max(sigma_b); %máxima variância entre as classes
  T = mean(find(sigma_b == m));
endfunction

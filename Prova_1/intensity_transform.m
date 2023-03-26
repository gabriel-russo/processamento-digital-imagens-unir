function img_out = intensity_transform(kwargs)

%   Não sei entendi o varargin então não fiz, porém aqui está as funções da questão:

    img2 = imread('lena_gray_512.tif');

    img_negativo = negativo(img2, 8);

    imshow(img_negativo);

    img_limiar = limiar(img2, 8, 128)

    imshow(img_limiar)
end

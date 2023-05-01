function img_out = medio(img, mask_size)

    [lin, col] = size(img);

    img = padarray(img, [mask_size mask_size]);

    img_out = zeros(size(img));

    mask_middle = ceil(mask_size / 2);

    for i=mask_middle + 1:lin
       for j=mask_middle + 1:col

           img_region = img(i-mask_middle:i, j-mask_middle:j);

           f_hat = mean(img_region(:));

           img_out(i, j) = f_hat;
       end
    end

    img_out = uint8(img_out);
end

def negativo(img_in):
    lin, col = img_in.shape

    L = 2 ^ 8 - 1

    for i in range(1, lin):
        for j in range(1, col):
            img_in[i, j] = L - img_in[i, j]

    return img_in

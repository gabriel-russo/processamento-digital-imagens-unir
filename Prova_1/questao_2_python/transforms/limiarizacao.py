def limiarizacao(img, limiar):
    L = 2 ^ 8 - 1

    img[img <= limiar] = 0

    img[img > limiar] = L

    return img

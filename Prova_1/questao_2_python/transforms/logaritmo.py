from numpy import log
from skimage.util import img_as_float


def logaritmo(img, c):
    img = img_as_float(img)

    rows, columns = img.shape

    for i in range(1, rows):
        for j in range(1, columns):
            img[i, j] = c * log(1 + img[i, j])

    return img

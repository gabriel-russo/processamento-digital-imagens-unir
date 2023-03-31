from skimage.util import img_as_float


def gamma(img, c, g):
    img = img_as_float(img)

    rows, columns = img.shape

    for i in range(1, rows):
        for j in range(1, columns):
            img[i, j] = c * img[i, j] ** g

    return img

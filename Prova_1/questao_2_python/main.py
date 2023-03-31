from skimage import io
import matplotlib.pyplot as plt
from intensity_transform import intensity_transform


img = io.imread("lena_gray_512.tif")

negativo = intensity_transform(img=img, transform="negativo")

limiarizacao = intensity_transform(img=img, transform="limiarizacao", T=128)

gamma = intensity_transform(img=img, transform="gamma", c=1, gamma=0.25)

logaritmo = intensity_transform(img=img, transform="logaritmo", c=2)

print(logaritmo)

fig, ax = plt.subplots(3, 2, figsize=(10, 10))

ax[0][0].imshow(img, cmap="gray")

ax[0][1].imshow(negativo, cmap="gray")

ax[1][0].imshow(limiarizacao, cmap="gray")

ax[1][1].imshow(gamma, cmap="gray")

ax[2][0].imshow(logaritmo, cmap="gray")

plt.show()

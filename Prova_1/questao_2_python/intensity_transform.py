from transforms import negativo, limiarizacao, gamma, logaritmo


def intensity_transform(**kwargs):
    if kwargs["img"] is not None and kwargs["transform"] is not None:
        t = kwargs["transform"].lower()

        if t == "negativo":
            img = kwargs["img"].copy()
            return negativo(img)

        if t == "limiarizacao":
            img = kwargs["img"].copy()
            return limiarizacao(img, kwargs["T"])

        if t == "gamma":
            img = kwargs["img"].copy()
            return gamma(img, kwargs["c"], kwargs["gamma"])

        if t == "logaritmo":
            img = kwargs["img"].copy()
            return logaritmo(img, kwargs["c"])

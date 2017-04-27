import math

q = 0.168


def find_prob(x: str, y: str):
    """Найти вероятность p(y|x)"""
    assert len(x) == len(y)
    res = 1
    for i in range(len(x)):
        res = res * (1 - q if x[i] == y[i] else q)
    return res


def find_message_prob(x: dict, x_when_y: dict):
    """Найти вероятность p(y)"""
    res = 0
    for char in x_when_y.keys():
        res = res + x_when_y[char] * x[char]
    return res


def find_posterior_probs(alph: dict, x: dict, y: str):
    """Найти вероятность p(x|y)"""
    x_when_y = alph.copy()
    for char in x_when_y.keys():
        x_when_y[char] = find_prob(alph[char], y)
    prob_y = find_message_prob(x, x_when_y)
    x_post = x.copy()
    for char in x.keys():
        x_post[char] = x_when_y[char] * x[char] / prob_y
    return x_post


def find_entropy(alph: dict, x: dict, y: str):
    """Найти условную энтропию H(X|y)"""
    x_when_y = find_posterior_probs(alph, x, y)
    res = 0
    for key, value in x.items():
        res = res + x_when_y[key] * math.log2(x_when_y[key])
    return -res


def find_avg_entropy(alph: dict, x: dict, y: list):
    """Найти среднюю условную энтропию H(X|Y)"""
    res = 0
    for yi in y:
        x_when_y = find_posterior_probs(alph, x, yi)
        res = res + find_message_prob(x, x_when_y) * find_entropy(alph, x, yi)
    return res


def find_info(alph: dict, x: dict, y: str):
    """Найти количество информации I(X:y)"""
    res = 0
    for char in x.keys():
        res = res + find_prob(alph[char], y) * math.log2(x[char])
    return -res - find_entropy(alph, x, y)


def find_avg_info(alph: dict, x: list, y: list):
    """Найти среднее количество информации I(X:Y)"""
    res = 0
    for i in range(len(y)):
        x_when_y = find_posterior_probs(alph, x[i], y[i])
        res = res + find_message_prob(x[i], x_when_y) * find_info(alph, x[i], y[i])
    return res

import math

q = 0.168
p = 1 - q


def find_prob(x: str, y: str):
    """Найти вероятность p(y|x)"""
    assert len(x) == len(y)
    prob = 1
    for i in range(len(x)):
        prob = prob * (p if x[i] == y[i] else q)
    return prob


def find_message_prob(x: dict, x_when_y: dict):
    """Найти вероятность p(y)"""
    total = 0
    for char in x_when_y.keys():
        total = total + x_when_y[char] * x[char]
    return total


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


def find_entropy(x: dict):
    """Найти энтропию H(X)"""
    res = 0
    for key, value in x.items():
        res = res + value * math.log2(value)
    return -res


def find_cond_entropy(alph: dict, x: dict, y: str):
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
        res = res + find_message_prob(x, x_when_y) * find_cond_entropy(alph, x, yi)
    return res


def find_info(alph: dict, x: dict, y: str):
    """Найти количество информации об x I(X|y)"""
    summ = 0
    for char in x.keys():
        summ = summ + find_prob(alph[char], y) * math.log2(x[char])
    return -summ - find_cond_entropy(alph, x, y)


def find_avg_info(alph: dict, x: dict, y: list):
    """Найти среднее количество информации об x H(X|Y)"""
    # res = 0
    # for yi in y:
    #     x_when_y = find_posterior_probs(alph, x, yi)
    #     res = res + find_message_prob(x, x_when_y) * find_info(alph, x, yi)
    # return res
    return find_entropy(x) - find_avg_entropy(alph, x, y)

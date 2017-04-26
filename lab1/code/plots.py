import matplotlib.pyplot as plt
from matplotlib import rc

font = {'family': 'Arial', 'weight': 'normal'}
rc('font', **font)


def draw_distribution(keys: list, probs: dict, title='', show=True, save=''):
    """Построить граифк распределения вероятностей"""
    values = []
    for key in keys:
        values.append(probs[key])
    plt.figure(figsize=(11, 7))
    plt.bar(range(len(probs)), values, align='center')
    plt.xticks(range(len(probs)), keys)
    plt.xlabel('$x$', fontsize=20)
    plt.ylabel('$P(x)$', fontsize=20)
    plt.tick_params(labelsize=9)
    if title != '':
        plt.title(title, fontsize=15)
    plt.tight_layout()
    plt.xlim([0, len(probs)])
    plt.ylim([0, 1])
    plt.tight_layout()
    if save != '':
        plt.savefig(save)
    if show:
        plt.show()
    plt.close()


def draw_entropy(x: list, uniform: list, weighted: list, title='', show=True, save=''):
    """Построить график энтропии"""
    plt.figure(figsize=(11, 7))
    plt.plot(x, uniform, marker='s', label='Равновероятное')
    plt.plot(x, weighted, marker='s', label='Взвешенное')
    plt.legend(fontsize=15)
    plt.xlabel('Номер сообщения', fontsize=15)
    plt.ylabel('$H(x)$', fontsize=20)
    plt.tick_params(labelsize=15, pad=10)
    if title != '':
        plt.title(title, fontsize=20)
    plt.tight_layout()
    if save != '':
        plt.savefig(save)
    if show:
        plt.show()
    plt.close()


def draw_info(x: list, uniform: list, weighted: list, title='', show=True, save=''):
    """Построить график количества информации"""
    plt.figure(figsize=(11, 7))
    plt.plot(x, uniform, marker='s', label='Равновероятное')
    plt.plot(x, weighted, marker='s', label='Взвешенное')
    plt.legend(fontsize=15, loc='upper left')
    plt.xlabel('Номер сообщения', fontsize=15)
    plt.ylabel('$I(x)$', fontsize=20)
    plt.tick_params(labelsize=15, pad=10)
    if title != '':
        plt.title(title, fontsize=20)
    plt.tight_layout()
    if save != '':
        plt.savefig(save)
    if show:
        plt.show()
    plt.close()

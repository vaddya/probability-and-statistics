def get_alphabet(filename):
    """Считать алфавит из файла"""
    alphabet = {}
    with open(filename, encoding='utf8') as f:
        content = f.readlines()
        content = [x.rstrip().split('\t') for x in content]
        for pair in content:
            alphabet[pair[0]] = pair[1]
    return alphabet


def get_char(alphabet: dict, code: str):
    """Найти символ по его двоичному коду"""
    for key, value in alphabet.items():
        if value == code:
            return key


def get_sorted_keys(alphabet: dict):
    """Получить алфавит, отсортерованный по двоичному коду символов"""
    sorted_values = sorted(alphabet.values())
    sorted_keys = []
    for value in sorted_values:
        sorted_keys.append(get_char(alphabet, value))
    return sorted_keys

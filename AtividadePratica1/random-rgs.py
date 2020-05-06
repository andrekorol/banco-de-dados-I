import sys
from itertools import repeat
from random import randrange


def generate_rg():
    rg = [randrange(0, 9) for x in range(9)]

    for _ in repeat(None, 2):
        val = sum([(len(rg) + 1 - i) * v for i, v in enumerate(rg)]) % 11
        rg.append(11 - val if val > 1 else 0)

    rg_str = "%s%s%s.%s%s%s.%s%s%s-%s%s" % tuple(rg)

    # remove leading '0'
    if rg_str[0] == '0':
        rg_str = rg_str.replace('0', '', 1)

    return rg_str


print(generate_rg())
sys.stdout.flush()

from typing import Union

Number = Union[int, float]


def max_of_two(a: Number, b: Number) -> Number:
    if a >= b:
        return a
    return b

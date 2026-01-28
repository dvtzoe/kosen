from typing import Union

Number = Union[int, float]


def max_of_three(a: Number, b: Number, c: Number) -> Number:
    # Compare step by step without using built-in max
    m = a
    if b > m:
        m = b
    if c > m:
        m = c
    return m

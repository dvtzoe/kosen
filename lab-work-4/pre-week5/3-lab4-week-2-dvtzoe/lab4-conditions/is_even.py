def is_even(n: int) -> bool:
    if not isinstance(n, int):
        raise TypeError("n must be int")
    return (n % 2) == 0

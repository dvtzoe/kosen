def greet(name: str) -> str:
    if not isinstance(name, str):
        raise TypeError("name must be str")
    cleaned = name.strip()
    if cleaned == "":
        raise ValueError("name must not be empty")
    return f"Hello, {cleaned}!"

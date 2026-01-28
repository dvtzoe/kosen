from functions import add, multiply, greet


def test_add():
    assert add(3, 4) == 7


def test_multiply():
    assert multiply(5, 2) == 10


def test_greet():
    assert greet("Alice") == "Hello, Alice!"

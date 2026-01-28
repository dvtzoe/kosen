import pytest
from greet import greet


def test_basic_names():
    assert greet("Alice") == "Hello, Alice!"
    assert greet("Bob") == "Hello, Bob!"


def test_whitespace_and_casing():
    assert greet("  Kosen  ") == "Hello, Kosen!"
    assert greet("\tNeo\n") == "Hello, Neo!"


def test_invalid_types():
    with pytest.raises(TypeError):
        greet(123)  # type: ignore


def test_empty_after_strip():
    with pytest.raises(ValueError):
        greet("   ")

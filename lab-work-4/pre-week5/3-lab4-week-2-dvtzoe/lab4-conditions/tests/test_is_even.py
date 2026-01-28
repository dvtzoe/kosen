import pytest
from is_even import is_even


def test_even_basic():
    assert is_even(0) is True
    assert is_even(2) is True
    assert is_even(-4) is True


def test_odd_basic():
    assert is_even(1) is False
    assert is_even(-3) is False


def test_large_numbers():
    assert is_even(10**6) is True
    assert is_even(10**6 + 1) is False


def test_type_errors():
    with pytest.raises(TypeError):
        is_even(3.14)  # type: ignore

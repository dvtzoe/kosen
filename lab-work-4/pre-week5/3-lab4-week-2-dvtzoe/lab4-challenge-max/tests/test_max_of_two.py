from max_of_two import max_of_two


def test_integers():
    assert max_of_two(3, 5) == 5
    assert max_of_two(10, 2) == 10
    assert max_of_two(-7, -3) == -3
    assert max_of_two(5, 5) == 5


def test_floats_and_mixed():
    assert max_of_two(3.5, 3.2) == 3.5
    assert max_of_two(3, 3.0) == 3
    assert max_of_two(-1.5, -1.5) == -1.5

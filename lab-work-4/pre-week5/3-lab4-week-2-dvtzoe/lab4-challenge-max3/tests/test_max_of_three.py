from max_of_three import max_of_three


def test_integers():
    assert max_of_three(1, 2, 3) == 3
    assert max_of_three(10, 2, 7) == 10
    assert max_of_three(-5, -1, -3) == -1


def test_floats_and_mixed():
    assert max_of_three(1.2, 1.5, 1.3) == 1.5
    assert max_of_three(3, 3.0, 2.9) == 3
    assert max_of_three(-2.5, -2.5, -3.0) == -2.5


def test_ties():
    assert max_of_three(5, 5, 1) == 5
    assert max_of_three(4, 6, 6) == 6

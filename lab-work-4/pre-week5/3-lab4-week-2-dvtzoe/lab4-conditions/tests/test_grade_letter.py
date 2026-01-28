import pytest
from grade_letter import grade_letter


@pytest.mark.parametrize(
    "score,expected",
    [
        (100, "A"),
        (90, "A"),
        (80, "A"),
        (79, "B"),
        (70, "B"),
        (69, "C"),
        (60, "C"),
        (59, "D"),
        (50, "D"),
        (49, "F"),
        (0, "F"),
    ],
)
def test_boundaries(score, expected):
    assert grade_letter(score) == expected


def test_range_and_type():
    with pytest.raises(ValueError):
        grade_letter(-1)
    with pytest.raises(ValueError):
        grade_letter(101)
    with pytest.raises(TypeError):
        grade_letter(75.0)  # type: ignore

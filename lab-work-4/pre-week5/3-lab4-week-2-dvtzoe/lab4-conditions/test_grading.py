from grading import classify


def test_classify():
    assert classify(85) == "A"
    assert classify(72) == "B"
    assert classify(65) == "C"
    assert classify(20) == "D"

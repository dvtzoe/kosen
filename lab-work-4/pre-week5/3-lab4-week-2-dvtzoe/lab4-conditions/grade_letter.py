def grade_letter(score: int) -> str:
    if not isinstance(score, int):
        raise TypeError("score must be int")
    if not (0 <= score <= 100):
        raise ValueError("score out of range")
    if score >= 80:
        return "A"
    if score >= 70:
        return "B"
    if score >= 60:
        return "C"
    if score >= 50:
        return "D"
    return "F"

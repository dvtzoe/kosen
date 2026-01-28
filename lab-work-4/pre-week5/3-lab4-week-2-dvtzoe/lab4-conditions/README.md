# Lab 4 — Conditions (Version B)

Implement two functions with correct branching and validation.

## Functions
1) `is_even(n: int) -> bool`  
   - True for even numbers, False otherwise.  
   - Non-int → `TypeError`.

2) `grade_letter(score: int) -> str`  
   - 80–100: A, 70–79: B, 60–69: C, 50–59: D, 0–49: F  
   - Outside 0..100 → `ValueError`  
   - Non-int → `TypeError`

Run:
```bash
pytest -q
```

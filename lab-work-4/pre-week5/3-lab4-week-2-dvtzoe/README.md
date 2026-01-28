[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/xvvaxyjX)
# KOSEN-KMITL — Lab4 Week 2 (Version B)

Practice **functions**, **conditions**, and small **challenges** with automated tests (pytest).

## Structure
```
Lab4-Week2/
├─ lab3-functions/           # Basic functions + validation
├─ lab4-conditions/          # if/elif/else, boundaries
├─ lab4-challenge-max/       # Challenge 1: max of two
└─ lab4-challenge-max3/      # Challenge 2: max of three
```

## How to work
1. Open this repo in **Codespaces** (recommended) or locally.
2. In each folder, read the `README.md` and implement the `.py` files.
3. Run tests locally before pushing:
   ```bash
   pytest -q
   ```
4. Commit & push when green.

---

## Grading Rubric (100 pts)

| Component | Criteria | Points |
|---|---|---:|
| **Lab3 — Functions** | All test cases pass; input validation (`TypeError`/`ValueError`); clean code & naming | **40** |
| **Lab4 — Conditions** | Boundary handling; correct ranges; proper error handling | **40** |
| **Challenge 1 — Max of Two** | Handles ints/floats; equal values; no `max()` | **10** |
| **Challenge 2 — Max of Three** | Correct logic; covers negative & mixed floats; tie cases; no `max()` | **10** |

**Late policy** (Instructor can edit): -10 pts / day late (max 3 days).

> Full marks require all tests to pass. Partial credit may be given for clear logic with minor issues.

---

## Running tests
Top-level tests (all labs):
```bash
pytest -q
```

Run a single folder:
```bash
cd lab4-conditions
pytest -q
```

---

## Submission
Push to your assignment repo. On GitHub, the **Actions** tab will show your test results automatically.

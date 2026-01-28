# Lab 3 — Functions (Version B)

Implement a robust greeter function with validation.

## Task
Edit `greet.py`:

```python
def greet(name: str) -> str:
    """Return "Hello, <Name>!" after trimming whitespace.

    Rules:
    - Only accept `str` → otherwise raise TypeError
    - Strip whitespace; if empty after strip → raise ValueError
    - Keep original casing (no forced capitalization)
    """
```
Run:
```bash
pytest -q
```

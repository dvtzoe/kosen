import importlib
import io
import sys

def test_name_is_changed():
    hello = importlib.import_module("hello")
    assert hello.NAME != "REPLACE_WITH_YOUR_NAME", "Please replace NAME with your real name."

def test_greet_output(capsys):
    hello = importlib.import_module("hello")
    # Simulate running as a script
    from hello import greet, NAME
    print(greet(NAME))
    captured = capsys.readouterr().out.strip()
    assert captured == f"Hello, {NAME}!", "Output must be exactly: Hello, <YourName>!"

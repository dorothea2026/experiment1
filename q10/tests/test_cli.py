import subprocess
import sys

def test_blank_name_exits_with_2():
    result = subprocess.run(
        ["sdt-greet", "--name", ""],
        capture_output=True,
        text=True
    )
    assert result.returncode == 2, f"Expected exit code 2, got {result.returncode}"

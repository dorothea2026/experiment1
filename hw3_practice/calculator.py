import sys

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    return a / b

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python calculator.py <num1> <operator> <num2>")
        sys.exit(1)
    a = float(sys.argv[1])
    op = sys.argv[2]
    b = float(sys.argv[3])
    if op == '+':
        print(add(a, b))
    elif op == '-':
        print(subtract(a, b))
    elif op == '*':
        print(multiply(a, b))
    elif op == '/':
        print(divide(a, b))
    else:
        print("Unknown operator")

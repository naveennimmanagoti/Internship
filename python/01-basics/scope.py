x = 10  # Global variable

def demo():
    x = 20  # Local variable
    print("Local:", x)
    print("Global:", globals()["x"])

demo()
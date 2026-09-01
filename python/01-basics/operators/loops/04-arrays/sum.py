def list_sum(numbers):
    total = 0

    for i in numbers:
        total += i

    return total


numbers = [10, 20, 30, 40, 50]

print("Sum of elements:", list_sum(numbers))
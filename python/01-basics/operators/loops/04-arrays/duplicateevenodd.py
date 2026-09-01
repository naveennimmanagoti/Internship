'''def find_duplicates(numbers):
    duplicates = []

    for i in numbers:
        if numbers.count(i) > 1 and i not in duplicates:
            duplicates.append(i)

    return duplicates


numbers = [10, 20, 30, 20, 40, 10, 50]

print("Duplicate values:", find_duplicates(numbers))'''
#program to count even odd
def count_even_odd(numbers):
    even = 0
    odd = 0

    for i in numbers:
        if i % 2 == 0:
            even += 1
        else:
            odd += 1

    print("Even numbers:", even)
    print("Odd numbers:", odd)


numbers = [10, 15, 20, 25, 30, 35]

count_even_odd(numbers)
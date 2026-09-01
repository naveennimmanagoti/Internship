'''def average(numbers):
    total = 0

    for i in numbers:
        total += i

    return total / len(numbers)


numbers = [10, 20, 30, 40, 50]

print("Average:", average(numbers))'''

#program to find index of an element30
numbers = [10, 20, 30, 40, 50]

element = int(input("Enter element to search: "))

found = False

for i in range(len(numbers)):
    if numbers[i] == element:
        print("Element found at index:", i)
        found = True
        break

if not found:
    print("Element not found")
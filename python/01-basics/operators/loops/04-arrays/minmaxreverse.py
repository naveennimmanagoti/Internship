'''def find_min_max(numbers):
    minimum = min(numbers)
    maximum = max(numbers)

    return minimum, maximum

numbers = [10, 25, 5, 40, 15]

minimum, maximum = find_min_max(numbers)

print("Minimum:", minimum)
print("Maximum:", maximum)'''
#program to reverse a list
def reverse_list(numbers):
    reverse = []

    for i in numbers:
        reverse.insert(0, i)

    return reverse

numbers = [10, 20, 30, 40, 50]

print("Original list:", numbers)
print("Reversed list:", reverse_list(numbers))
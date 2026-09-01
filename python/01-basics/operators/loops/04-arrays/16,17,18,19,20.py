'''def check_values(numbers):
    if 12 in numbers and 23 in numbers:
        print("Both values are present")
    else:
        print("Both values are not present")

numbers = [10, 12, 15, 23, 30]

check_values(numbers)'''
#program for unique elements
'''numbers = [10, 20, 10, 30, 20, 40]

unique = []

for i in numbers:
    if numbers.count(i) == 1:
        unique.append(i)

print("Unique elements:", unique)'''
#program for frequency count
'''numbers = [10, 20, 10, 30, 20, 10]

for i in numbers:
    print(i, ":", numbers.count(i))'''
#program for sorting
'''numbers = [30, 10, 50, 20, 40]

for i in range(len(numbers)):
    for j in range(i + 1, len(numbers)):
        if numbers[i] > numbers[j]:
            numbers[i], numbers[j] = numbers[j], numbers[i]

print("Sorted list:", numbers)'''
#merge two lists without duplicates
list1 = [10, 20, 30]
list2 = [20, 30, 40, 50]

result = []

for i in list1 + list2:
    if i not in result:
        result.append(i)

print("Merged list:", result)
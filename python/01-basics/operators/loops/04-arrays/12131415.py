'''list1 = [10, 20, 30, 40]
list2 = [20, 30, 50, 60]

common = []

for i in list1:
    if i in list2:
        common.append(i)

print("Common elements:", common)'''
#program to remove duplicate elements
'''def remove_duplicates(numbers):
    new_list = []

    for i in numbers:
        if i not in new_list:
            new_list.append(i)

    return new_list

numbers = [10, 20, 10, 30, 20, 40]

print("New list:", remove_duplicates(numbers))'''
#second largest element
'''def second_largest(numbers):
    largest = numbers[0]
    second = numbers[0]

    for i in numbers:
        if i > largest:
            second = largest
            largest = i
        elif i > second and i != largest:
            second = i

    return second

numbers = [10, 30, 20, 50, 40]

print("Second largest:", second_largest(numbers))'''
#program for difference between max an min
def difference(numbers):
    return max(numbers) - min(numbers)

numbers = [10, 20, 5, 40, 30]

print("Difference:", difference(numbers))
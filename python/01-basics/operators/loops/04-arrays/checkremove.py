'''def check(numbers, value):
    if value in numbers:
        print("Value is present")
    else:
        print("Value is not present")

numbers = [10, 20, 30, 40, 50]

value = int(input("Enter value: "))

check(numbers, value)'''
def remove_element(numbers, value):
    if value in numbers:
        numbers.remove(value)
        print("Updated list:", numbers)
    else:
        print("Element not found")

numbers = [10, 20, 30, 40, 50]

value = int(input("Enter element to remove: "))

remove_element(numbers, value)
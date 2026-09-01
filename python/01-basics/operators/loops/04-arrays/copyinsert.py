'''def copy_list(list1):
    list2 = []

    for i in list1:
        list2.append(i)

    return list2

list1 = [10, 20, 30, 40, 50]

list2 = copy_list(list1)

print("Original list:", list1)
print("Copied list:", list2)'''
#program for inserting elements into list
def insert_element(numbers, index, value):
    numbers.insert(index, value)
    return numbers

numbers = [10, 20, 30, 40, 50]

index = int(input("Enter index: "))
value = int(input("Enter value: "))

print("Updated list:", insert_element(numbers, index, value))
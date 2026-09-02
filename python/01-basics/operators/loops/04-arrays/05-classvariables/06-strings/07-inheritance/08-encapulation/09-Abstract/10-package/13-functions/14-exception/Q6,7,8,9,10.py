#program for create own exception
'''class InsufficientBalanceError(Exception):
    pass


balance = 1000
amount = int(input("Enter withdrawal amount: "))

try:
    if amount > balance:
        raise InsufficientBalanceError("Insufficient balance")

    balance = balance - amount
    print("Remaining balance:", balance)

except InsufficientBalanceError as e:
    print(e)'''

#program for using finally
'''file = None

try:
    file = open("sample.txt", "r")
    print(file.read())

except FileNotFoundError:
    print("File not found")

finally:
    if file:
        file.close()
        print("File closed")'''

#program for file not found
'''try:
    file = open("test.txt", "r")
    print(file.read())

except FileNotFoundError:
    print("File does not exist")'''

#program for type error
'''try:
    number = 10
    text = "Hello"

    print(number + text)

except TypeError:
    print("Cannot add a number and a string")'''

#program for attribute error
class Student:
    def __init__(self):
        self.name = "Naveen"


s = Student()

try:
    print(s.age)

except AttributeError:
    print("Attribute does not exist")
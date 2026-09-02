#program for index error
'''numbers = [10, 20, 30]

try:
    print(numbers[5])

except IndexError:
    print("Invalid index")'''

#program to use else block
'''try:
    a = 10
    b = 2

    result = a / b

except ZeroDivisionError:
    print("Cannot divide by zero")

else:
    print("Result:", result)'''

#program for logging errors
'''import logging

logging.basicConfig(filename="error.log", level=logging.ERROR)

try:
    result = 10 / 0

except ZeroDivisionError as e:
    logging.error(e)
    print("Error logged successfully")'''

#program for input validation sysytem
while True:
    try:
        age = int(input("Enter your age: "))

        if age > 0:
            print("Valid age:", age)
            break
        else:
            print("Age must be greater than 0")

    except ValueError:
        print("Please enter a valid number")
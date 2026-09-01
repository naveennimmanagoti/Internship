num = int(input("Enter a number: "))

i = 2
count = 0

while i < num:
    if num % i == 0:
        count += 1
    i += 1

if num > 1 and count == 0:
    print("Prime number")
else:
    print("Not a prime number")
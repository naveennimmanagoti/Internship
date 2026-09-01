num = input("Enter a number: ")

reverse = ""

for i in num:
    reverse = i + reverse

if num == reverse:
    print("Palindrome number")
else:
    print("Not a palindrome number")
'''file = open("sample.txt", "r")

content = file.read()

print(content)

file.close()'''
#program for write in filr
'''text = input("Enter text: ")

file = open("sample.txt", "w")
file.write(text)
file.close()

print("Data written successfully.")'''
#program for read file using file object
'''file = open("sample.txt", "r")

print("Using read():")
file.seek(0)
print(file.read())

print("Using readline():")
file.seek(0)
print(file.readline())

print("Using readlines():")
file.seek(0)
print(file.readlines())

file.close()'''
#program for random access file reading
'''file = open("sample.txt", "r")

file.seek(7)

data = file.read()

print("Data from position 7:")
print(data)

file.close()'''
#program for read frm specific index
file = open("sample.txt", "r")

file.seek(5)

data = file.read(10)

print(data)

file.close()
#program for check file permisions
'''import os

file_name = "sample.txt"

if os.access(file_name, os.R_OK):
    print("File has read permission")
else:
    print("File does not have read permission")

if os.access(file_name, os.W_OK):
    print("File has write permission")
else:
    print("File does not have write permission")'''
#program for count wors,lines and characters
'''file = open("sample.txt", "r")

content = file.read()

lines = content.splitlines()
words = content.split()
characters = len(content)

print("Lines:", len(lines))
print("Words:", len(words))
print("Characters:", characters)

file.close()'''
#program for copy file content
'''source = open("sample.txt", "r")

content = source.read()

source.close()

destination = open("copy.txt", "w")

destination.write(content)

destination.close()

print("File copied successfully")'''
#programfor append data with timestamp
'''from datetime import datetime

text = input("Enter text: ")

current_time = datetime.now()

file = open("sample.txt", "a")

file.write("\n" + text + " - " + str(current_time))

file.close()

print("Data appended successfully")'''
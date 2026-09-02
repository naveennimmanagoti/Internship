#program to create dictionary
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi",
    104: "Suresh",
    105: "Kiran"
}

print(students)'''

#1.1 program to add new entities
'''students = {
    101: "Naveen",
    102: "Rahul"
}

students[103] = "Ravi"
students[104] = "Kiran"

print(students)'''
#1.2 program to update existing values
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi"
}

students[102] = "Raj"

print(students)'''
#1.3 program to access values
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi"
}

print("Student:", students[101])

print("All names:")

for name in students.values():
    print(name)'''
#1.4 program to iterate through dictionary
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi"
}

for id, name in students.items():
    print(id, ":", name)'''
#1.5 program to print only keys
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi"
}

for id in students.keys():
    print(id)'''
#1.6program to print only values
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi"
}

for name in students.values():
    print(name)'''
#program 1.7 create nested dictionary
'''students = {
    101: {
        "name": "Naveen",
        "age": 20,
        "city": "Hyderabad"
    },
    102: {
        "name": "Rahul",
        "age": 21,
        "city": "Warangal"
    },
    103: {
        "name": "Ravi",
        "age": 20,
        "city": "Karimnagar"
    }
}

print(students)'''
#1.8 program to access nested values
'''students = {
    101: {"name": "Naveen", "age": 20, "city": "Hyderabad"},
    102: {"name": "Rahul", "age": 21, "city": "Warangal"}
}

print("Name:", students[101]["name"])
print("Age:", students[101]["age"])'''
#1.9 program to delete elements
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi",
    104: "Kiran"
}

# Delete a specific student
del students[101]

# Remove last inserted item
students.popitem()

# Remove a specific key
students.pop(102)

print(students)'''
#2 program to check key existence
'''students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi"
}

student_id = 102

if student_id in students:
    print("Student ID exists")
else:
    print("Student ID does not exist")'''
#3 program to count entries
students = {
    101: "Naveen",
    102: "Rahul",
    103: "Ravi",
    104: "Kiran",
    105: "Suresh"
}

print("Total students:", len(students))
'''class Student:
    college = "SIET"

s1 = Student()
s2 = Student()

Student.college = "ABC College"

print("Using class:", Student.college)
print("Using instance 1:", s1.college)
print("Using instance 2:", s2.college)'''
#program for class variable vs instance vaiable
class Student:
    college = "SIET"          # Class variable

    def __init__(self, name):
        self.name = name       # Instance variable


s1 = Student("Naveen")
s2 = Student("Rahul")

print("Class variable:", Student.college)
print("Instance variable:", s1.name)

s1.name = "Kiran"
Student.college = "ABC College"

print("After modifying:")
print("s1 name:", s1.name)
print("s2 name:", s2.name)
print("College:", Student.college)
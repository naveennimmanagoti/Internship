'''class Student:
    college = "SIET"

print(Student.college)'''
#program for access vis instatnce
'''class Student:
    college = "SIET"

s1 = Student()

print(s1.college)'''
#program to modify class variablr via instance
class Student:
    college = "SIET"

s1 = Student()

s1.college = "ABC College"

print("Using instance:", s1.college)
print("Using class:", Student.college)
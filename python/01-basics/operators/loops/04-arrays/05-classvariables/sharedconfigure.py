'''class Student:
    count = 0

    def __init__(self):
        Student.count += 1


s1 = Student()
s2 = Student()
s3 = Student()

print("Total students:", Student.count)'''
#program for configuration setting
class Course:
    course_name = "Python Basics"


s1 = Course()
s2 = Course()

print(s1.course_name)
print(s2.course_name)

Course.course_name = "Data Analytics"

print(s1.course_name)
print(s2.course_name)
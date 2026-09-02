#default and pararmeterized constructor
'''class Student:
    def __init__(self, name="Naveen", age=20):
        self.name = name
        self.age = age

    def display(self):
        print("Name:", self.name)
        print("Age:", self.age)


s1 = Student()
s2 = Student("Rahul")
s3 = Student("Ravi", 21)

s1.display()
s2.display()
s3.display()'''
#2program for calling parent constructor
'''class Parent:
    def __init__(self):
        self.name = "Naveen"


class Child(Parent):
    def __init__(self):
        super().__init__()
        self.age = 20

    def display(self):
        print("Name:", self.name)
        print("Age:", self.age)


obj = Child()
obj.display()'''
#3program for stimulating access levels
'''class Student:
    def __init__(self):
        self.name = "Naveen"       # Public
        self._age = 20             # Protected

    def display(self):
        print("Name:", self.name)
        print("Age:", self._age)


obj = Student()

print("Public:", obj.name)
print("Protected:", obj._age)'''
#4 profram for constructor attribute concept
'''class Student:
    def __init__(self):
        self.name = "Naveen"
        self.age = 20
        self.course = "B.Tech CSE"

student = Student()

print("Name:", student.name)
print("Age:", student.age)
print("Course:", student.course)'''
#5program using __str()__
'''class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return "Name: " + self.name + ", Age: " + str(self.age)

student = Student("Naveen", 20)

print(student)'''
#6constructor with args()
'''class Numbers:
    def __init__(self, *args):
        self.values = args

    def display(self):
        print("Values:", self.values)

obj = Numbers(10, 20, 30, 40)

obj.display()'''
#7program real world example
class Employee:
    def __init__(self, name, id, salary):
        self.name = name
        self.id = id
        self.salary = salary

    def display(self):
        print("Name:", self.name)
        print("ID:", self.id)
        print("Salary:", self.salary)
        print()


emp1 = Employee("Naveen", 101, 30000)
emp2 = Employee("Rahul", 102, 35000)

emp1.display()
emp2.display()
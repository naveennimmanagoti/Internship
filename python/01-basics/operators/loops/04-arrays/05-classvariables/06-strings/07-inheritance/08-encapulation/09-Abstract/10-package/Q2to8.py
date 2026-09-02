#create a package folder
'''1.python assignment/
│
├── class_one.py
└── class_two.py
2.python assignment/
│
└── mypackage/
    ├── class_one.py
    └── class_two.py
3.__init__.py
your structure be  now
python assignment/
│
└── mypackage/
    ├── __init__.py
    ├── class_one.py
    └── class_two.py
4.from .class_one import ClassOne
from .class_two import ClassTwo'''
#program for import classes
'''from .class_one import ClassOne
from .class_two import ClassTwo
import mypackage.class_one
from mypackage.class_two import ClassTwo

obj1 = mypackage.class_one.ClassOne()
obj2 = ClassTwo()

obj1.display()
obj2.display()'''
#4 program for use the classes
'''from mypackage.class_one import ClassOne
from mypackage.class_two import ClassTwo

obj1 = ClassOne()
obj2 = ClassTwo()

obj1.display()
obj2.display()'''
#5 program for final program
'''if __name__ == "__main__":
    c1 = ClassOne()
    c2 = ClassTwo()
    print(f"Running {c1.get_name()} system, {c2.get_version()}")
    print("\n--- Testing Classes ---")
    test_classes()'''
#6 alias imports
'''import mypackage.class_one as c1

obj = c1.ClassOne()

obj.display()'''
#7relative imports
'''from mypackage.class_one import ClassOne

obj = ClassOne()
obj.display()'''
#8program for real world structure
'''class ClassOne:
    def display(self):
        print("This is Class One")


class ClassTwo:
    def display(self):
        print("This is Class Two")


obj1 = ClassOne()
obj2 = ClassTwo()

obj1.display()
obj2.display()'''


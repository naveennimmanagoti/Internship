'''from abc import ABC, abstractmethod

class Animal(ABC):

    @abstractmethod
    def sound(self):
        pass

    def message(self):
        print("This is a normal method")


class Dog(Animal):

    def sound(self):
        print("Dog barks")


d = Dog()

d.message()
d.sound()'''
#program for create childclass
'''from abc import ABC, abstractmethod

class Animal(ABC):

    @abstractmethod
    def sound(self):
        pass


class Dog(Animal):

    def sound(self):
        print("Dog barks")


d = Dog()

d.sound()'''
#program for access not abstact methods
'''from abc import ABC, abstractmethod

class Animal(ABC):

    @abstractmethod
    def sound(self):
        pass

    def message(self):
        print("This is a normal method from Animal")


class Dog(Animal):

    def sound(self):
        print("Dog barks")


# Create child object
d = Dog()

# Call parent class non-abstract method
d.message()'''
#program for call abstract methods
from abc import ABC, abstractmethod

class Animal(ABC):

    @abstractmethod
    def sound(self):
        pass

    def message(self):
        print("This is a normal method")


class Dog(Animal):

    def sound(self):
        print("Dog barks")


# Create child object
d = Dog()

# Call implemented abstract method
d.sound()
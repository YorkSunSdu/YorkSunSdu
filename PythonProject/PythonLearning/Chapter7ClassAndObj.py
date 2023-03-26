# class
print("---class---")
class Animal1:
    def __init__(self, name):
        self.name = name
    def run(self):
        print(f"{self.name} runs")
dog1 = Animal1(name="dog1")
print("dog1.name:", dog1.name)
dog1.run()
Animal1.run(dog1)

# static method and class method
class Animal2:
    def __init__(self, name):
        self.name = name
    # ordinary instance method, the first parameter is self
    def run(self):
        print(f"{self.name} runs")
    # static method, need not parameter self
    @staticmethod
    def eat():
        print("eats")
    # class method, the first method is cls, need not parameter cls when invoked
    @classmethod
    def jump(cls, name):
        print(f"{name} jumps")
dog2 = Animal2(name="dog2")
dog2.run()
dog2.eat()
dog2.jump("dog2")
Animal2.jump("dog2")
Animal2.jump("dog3")
# difference between method and function
def demo_func():
    pass
print("ordinary function demo_func() and static method eat():", type(demo_func), type(dog2.eat))
print("instance method run() and class method jump():", type(dog2.run), type(dog2.jump))
print("method is a special function, which is because method is bound with object(instance or class)")

# private variable and private method
print("---private variable and private method---")
"""
5 meanings of Python underline:
single leading underline: _var
double leading underline: __var
single end underline: var_
double leading and end underline: __var__
single underline: _
"""
# single leading underline: _var
# variable or method leading with single underline use only inside
class Demo1:
    def __init__(self):
        self.foo = 11
        self._bar = 22
        self.__baz = 33
demo1 = Demo1()
print("demo1.foo:", demo1.foo)
# print("demo1._bar:", demo1._bar) not Error, but not recommend
# double leading underline：__var
# demo1.__baz Error, variables with double leading underline are private, and connot be invoked directly by instance object or class
print("demo1._Demo1__baz:", demo1._Demo1__baz) # can only be invoked through instance._classname__methodname
# single end underline: var_
# avoid conflicting with Python keywords
# def make_object(name, class) Error, class is keyword
def make_object(name, class_):
    pass
# double leading and end underline: __var__
# Python define special method. avoid using in your own program
# single underline: _
# showing a variable is temporary or unimportant
for _ in range(3):
    print("Hello, world")

# function create and invoke
from functools import reduce
import json
from functools import partial
import numpy
from numpy import power

print("---function create and invoke---")
def get_average(a, b):
    result = (a + b) / 2
    return result
average = get_average(2, 6)
print("average:", average)

def fact(n):
    if(n == 1):
        return 1
    return fact(n - 1) * n
fact1 = fact(5)
print("fact1:", fact1)

# parameter of function
print("---parameter of function---")
def func1(a, b, c = 0, d = 1): # a, b are required. c, d are optional with default values 0 and 1
    # required parameters must precede optional parameters
    pass
func1(10, 20, 30, 40)
def func2(*args, **kw): # *args must precede **kw
    print("args:", args) # *arg: tuple type
    print("kw:", kw) # **kw: dict type
func2(10, 11, c = 20, d = 21)
# *args can precede required parameters
def func3(*args, b):
    print("args:", args)
    print("b:", b)
func3(1, 2, b = 100)
# func3(1, b = 100, 2) Error
# func3(b = 100, 1, 2) Error
# **kw must be put at last position:
# def func4(**kw, a): Error
# def func4(**kw, a = 1): Error
# def func4(**kw, *arg): Error
def func5(a, b, *, c):
    print("a, b, c:", a, b, c)
# func5(1, 2, 3) Error
func5(1, 2, c = 3)
# passing parameters pass the memory addressed of parameters
def func6(item_, list_):
    list_.append(item_)
list1 = [0, 1]
print("list1:", list1)
func6(2, list1)
print("list1:", list1)

# lambda
print("---lambda---")
print("(lambda x, y: x + y)(2, 4):", (lambda x, y: x + y)(2, 3))
print("(lambda x: (lambda y: (lambda z: x + y + z)(3))(2))(1):", (lambda x: (lambda y: (lambda z: x + y + z)(3))(2))(1))
func7 = lambda n: 1 if n == 0 else n * func7(n - 1)
print("func7(5):", func7(5))
func8 = lambda func_, n: 1 if n == 0 else n * func_(func_, n - 1)
print("func8(func8, 5):", func8(func8, 5))

# advanced function
print("---advanced function---")
print("map(lambda x: x * 2, [1, 2, 3, 4, 5]):", map(lambda x: x * 2, [1, 2, 3, 4, 5]))
print("list(map(lambda x: x * 2, [1, 2, 3, 4, 5])):", list(map(lambda x: x * 2, [1, 2, 3, 4, 5])))
print("filter(lambda x: x < 0, range(-5, 5)):", filter(lambda x: x < 0, range(-5, 5)))
print("list(filter(lambda x: x < 0, range(-5, 5))):", list(filter(lambda x: x < 0, range(-5, 5))))
print("reduce(lambda x, y: x + y, [1, 2, 3, 4, 5]):", reduce(lambda x, y: x + y, [1, 2, 3, 4, 5]))

# reflection function
print("---reflection function---")
print("type(1):", type(1)) # return type of object
print("type([]):", type([]))
print("dir(json):", dir(json)) # return attribute list
print("hasattr(json, 'dumps'):", hasattr(json, "dumps"))
print("getattr(json, 'dumps'):", getattr(json, "dumps"))
a = 5
print("id(a):", id(a)) # return unique identifier of an object(int)
print("isinstance(10, int):", isinstance(10, int)) # return whether an object is an instance of a class
# print(json.__doc__) search doc of a module
import json as js
print("js.__name__:", js.__name__) # module name when defined
print("js.__file__:", js.__file__) # file path

# scope of variable
print("---scope of variable---")
# closure
def deco():
    name = "MING"
    def wrapper():
        print("name is:", name)
    return wrapper()
deco()
# change scope
# global() changes local variable to global variable; nonlocal() allows to use variables-out-closure in a closure
def deco1():
    age = 10
    def wrapper():
        nonlocal age # Error if without this line
        age += 1
        print("age:", age)
    return wrapper()
deco1()
# variable set
# globals() store all global variables as dict
def foo():
    print("run foo()")
def bar():
    foo_dup = globals().get("foo")
    foo_dup()
bar()
# locals() store all global variables as dict
def foobar():
    name = "MING"
    gender = "male"
    for key, value in locals().items():
        print(key, "=", gender)
foobar()

age = age1 = age2 = 18
name = "york sun"
name2 = 'york sun 2' # '' and "" can be ok
print(name, age, "\n")

age3, age4, age5 = 13, 14, 15
print(age1, age2, age3, age4, age5)

age6 = age5
print(id(age5)) # id():memory address of variables
print(id(age6))
print(bool(age5 is age6), "\n")

msg1 = 'What\'s your name?'
print(msg1, "\n")

a, b = 10, 3
print(a + b, a - b, a * b, a / b, a // b, a % b, a ** b, "\n")

print(bool(0), bool(1), bool(2), True, not True)
print(type(age), type(True), type(None), "\n")

name3 = input("Please input your name: ")
print("Your name is: " + name3) # no separation
print("Your name is: ", name3) # separated with a blank
age7 = input("Please input your age: ")
if age7.isdigit():
    print("Your age is: " + age7, "\n")
else:
    print("Wrong age", "\n")



# if
age = 20
if age >= 18: # pay attention to ':'
    print("adult")
else:
    print("nonage")

score = 75
if score >= 90:
    print("excellent")
elif score >= 80:
    print("great")
elif score >= 70:
    print("good")
elif score >= 60:
    print("qualified")
else:
    print("unqualified")

if age >=18 and score >= 60:
    print("adult and qualified")
if age <40 or score >= 60:
    print("not middle-aged or qualified")
if not age >= 40:
    print("not middle-aged", "\n")

# for
phones = ["Apple", "Huawei", "Xiaomi"]
for phone in phones:
    print("current phone:", phone)
for index, phone in enumerate(phones):
    print("my phone{} is {}".format(index + 1, phone))
for i in [0, 1, 2]:
    if i ==1:
        print(f"current number is {i}, gonna quit circulation")
        break
    print(f"current number is {i}")
for i in [0, 1, 2]:
    if i == 1:
        continue
    print(f"current number is {i}")
for i in [0, 1, 2]:
    if i == 1:
        print(f"current number is {i}")
        break
else:
    print("circulation is normal") # for-else: do not execute else statement after break, otherwise execute statement
for i in range(4):
    print(f"print 4 times. this is time {i}")
for _ in range(3):
    print(f"print 3 times")
for index, item in enumerate(["Apple", "Huawei", "Xiaomi"]):
    print(f"phone {index} is {item}")

# while
age = 1
while age <= 3:
    print(f"child is {age}-year-old. cannot go to nursery")
    age += 1
print("can go to nursery")

# comprehensions
# list comprehension
old_list = [0, 1, 2, 3, 4, 5]
print("old_list:", old_list)
new_list = [item1 for item1 in old_list if item1 % 2 == 0]
print("new_list:", new_list)
# dict comprehension
old_info = {"Jack": {"Chinese": 87, "math": 92, "English": 78},
            "Tom": {"Chinese": 92, "math": 100, "English":89}}
print("old_info:", old_info)
new_info = {name: scores for name, scores in old_info.items() if scores["math"] == 100}
print("new_info:", new_info)
old_info1 = {"name": "york sun", "age": 18, "gender": "male"}
print("old_info1:", old_info1)
new_info1 = {key_: val_ for key_, val_ in old_info1.items() if val_ == 18}
print("new_info1:", new_info1)
# set comprehension
old_list1 = [0, 0, 0, 1, 2, 3]
print("old_list1:", old_list1)
new_list1 = {item for item in old_list1}
print("new_list1:", new_list1)
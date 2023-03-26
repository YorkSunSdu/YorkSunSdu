# List
phones1 = list()
phones1.append("Apple")
phones1.append("Samsung")
phones1.append("Huawei")
print("phones1：", phones1)
phones2 = ["Apple", "Huawei", "Samsung", "Huawei"]
print("phones2：", phones2)
# add delete change search
print(phones1[0], phones1.index("Apple"), phones2.count("Huawei"), len(phones1))
phones1.append("OPPO")
phones1.insert(1, "vivo")
phones1.extend(phones2)
print("phones1 after appending, inserting, extending:", phones1)
phones1.pop()
print("phones1 pop():", phones1)
phones1.remove("Apple")
print("phones1 remove Apple:", phones1)
phones2.clear()
print("phones2 clear:", phones2)
del phones1[1]
print("phones1 del:", phones1)
del phones1[1:3]  # delete elements whose indexes are in [1:3)
print("phones1 del:", phones1)
# reverse
phones1.reverse()
print("phones1 reverse:", phones1)
# sort
list1 = [3, 2, 5, 1, 6, 4]
print("list1：", list1)
print("list1.sort()：", list1.sort())
print("list1：", list1)
list2 = [3, 2, 5, 1, 6, 4]
print("list2：", list2)
print("sorted(list2)：", sorted(list2))
print("list2：", list2, "\n")

# tuple
tuple1 = (1, 2, 3, 4)  # tuple cannot be changed
tuple2 = 1, 2, 3, 4
tuple3 = 1,  # tuple with one element
tuple4 = ()  # tuple without element
print("tuple1 to tuple4：", tuple1, tuple2, tuple3, tuple4, )
# tuple cannot be changed
print("tuple1[0]：", tuple1[0])
# tuple and list transfer
print("type(tuple1)：", type(tuple1))
list(tuple1)
print(type(tuple1))
print(type(list(tuple1)))
list3 = [1, 2, 3, 4, 5]
print(type(list3))
tuple(list3)
print(type(list3))
print(type(tuple(list3)))

# dict
dict1 = dict(name="york sun", age=18)
print(dict1)
dict2 = {"name": "york sun", "age": 18}
print(dict2)
info = [('name', 'york sun'), ('age', 18)]
print(dict(info))  # pay attention to () [] and {}
# add delete change search
print(dict1["name"])  # no index in dict, put a key in the []
# print(dict1[2]) Error
print(dict1.get("age", 20))
print(dict1.get("gender", "male"))  # output default value
dict1["gender"] = "male"
print(dict1)
dict1["age"] = 19
print("dict1 delete age:", dict1)
dict3 = dict(name="york sun", age=18)
dict3.pop("age")  # parameter of pop cannot be null
print("dict3 delete age:", dict3)
dict4 = dict(name="york sun", age=18)
del dict4["age"]
print("dict4 delete age:", dict4)

# set
set1 = {"Apple", "Huawei", "Xiaomi"}
print("set1: ", set1)
set2 = set(["Apple", "Huawei", "Xiaomi"])
print("set2: ", set2)
# add delete change search
set3 = set()
set3.add("Apple")
set3.add("Huawei")
print("set3: ", set3)
set4 = set()
set4.update({"Apple"})
set4.update(["Huawei"])
set4.update(("Xiaomi",))  # cannot be without the ','
set4.update({"OPPO": "123"})
print("set4: ", set4)
set4.remove("OPPO")  # Error if no parameter in function remove()
print("set4: ", set4)
set4.discard("vivo")  # Error if no parameter in function discard()
print("set4: ", set4)
set4.pop()  # delete an element randomly
print("set4: ", set4)
set4.clear()
print("set4: ", set4)
# compute
set5 = {"Apple", "Huawei"}
set6 = {"Xiaomi", "Huawei"}
print("set5: ", set5, "\n" + "set6: ", set6)
print("set5.union(set6): ", set5.union(set6))
print("set5 | set6: ", set5 | set6)
print("set5.difference(set6): ", set5.difference(set6))
print("set5 - set6: ", set5 - set6)
print("set5.intersection(set6): ", set5.intersection(set6))
print("set5.symmetric_difference(set6)", set5.symmetric_difference(set6))

# iterator
set1 = {"Apple", "Huawei", "Xiaomi"} # list, tuple, dict, set and strings can be iterated
for i in set1:
    print(i)
list1 = [0, 1, 2, 3]
gen = iter(list1)
for i in range(5):
    if i == 0:
        print(gen)
    else:
        print(next(gen))
gen = iter(list1)
for _ in range(4):
    print(next(gen))

# generator
gen1 = (i for i in range(5))
print("gen1:", gen1)
def generator_factory(top = 5):
     index = 0
     while index < top:
         print("index value:" + str(index))
         index = index + 1
         yield index
     raise StopIteration

gen = generator_factory()
gen.send(None)
gen.send(None)
gen.send(None)
gen.send(None)
gen.send(None)
# 抛出和捕获异常
print("---抛出和捕获异常---")
# try-except-else
try:
    1 / 0
except ZeroDivisionError as e:
    print("发生了错误：", str(e))
else:
    print("程序正常执行")
try:
    4 / 2
except ZeroDivisionError as e:
    print("发生了错误：", str(e))
else:
    print("程序正常执行")
# try-except-finally
try:
    1 / 0
except ZeroDivisionError as e:
    print("发生了错误：", str(e))
else:
    print("程序正常执行")
finally:
    print("程序运行结束")
try:
    4 / 2
except ZeroDivisionError as e:
    print("发生了错误：", str(e))
else:
    print("程序正常执行")
finally:
    print("程序运行结束")

# 自定义异常

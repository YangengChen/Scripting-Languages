num = int(input("Enter a number:"))
num2 = int(input("Enter a 2nd number:"))

try:
    result = num / num2
except ZeroDivisionError:
    print("Cannot divide by 0")
else:
    print(result)

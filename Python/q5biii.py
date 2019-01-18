lst = [1,2,3,4]

try:
    value = lst["str"]
except TypeError:
    print("List indices must be integers or slices, not str")
else:
    print(value)

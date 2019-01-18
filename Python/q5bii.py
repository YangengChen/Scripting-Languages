dct = {}
dct['Tim'] = 0
dct['Dan'] = 12

try:
    value = dct['Invalid']
except KeyError:
    print("Key does not exist in the dictionary")
else:
    print(value)

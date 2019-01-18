# Write a Python function that takes two parameters as input: a list of integers and the 
# even() function defined on Slide 2c-6. The function returns true if even() returns true for
# all integers in the input list. Otherwise, the function returns false. E.g., if the input list is 
# [2,4,6,8], the output would be true; if the input list is [3,4,6,8], the output would be false. 
# Your function must use at least one of the three functions: map(), filter(), and 
# reduce(). Write a small program to demonstrate the correctness of your implementation.

def even(x):
    return x%2 == 0

def evenCheck(a, even):
    print(a)
    evenList = list(filter(even, a))
    print(evenList)
    if len(evenList) == len(a):
        return True
    else:
        return False

print(evenCheck([2,4,6,8], even))
print(evenCheck([3,4,6,8], even))

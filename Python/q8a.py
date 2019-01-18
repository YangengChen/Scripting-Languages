# Write a Python function that takes two parameters as
#input: a list of integers and the even() function defined on Slide 2c-6. Using list 
#comprehension, the function returns a list that contains the positions of the integers in the
#input list for which even() returns true. E.g., if the input list is a=[2,3,4,5,6,8], and your 
#function is called listIndices(), then calling listIndices(a, even) would return
#[0,2,4,5].  Write a small program to demonstrate the correctness of your implementation.

def even(x):
    return x%2 == 0

def listIndices(a, even):
    evenList = [x for x in a if even(x)]
    indices = []
    for i in range(len(a)):
        if a[i] in evenList:
            indices.append(i)
    print(indices)
    
listIndices([2,3,4, 5,6,8], even)

#!/usr/bin/env python

import cgi
import random

print("Content-type: text/html\n")
print("<html><body>")
print("<title>Bitwise</title>")
print("<h1>Quiz Time!</h1>")

form = cgi.FieldStorage()
number = int(form['number'].value)
correct = int(form['correct'].value)
answer = form['answer'].value
op = form['operation'].value
num1 = ""
num2 = ""

if number == 1:
        print("<p>Answer = 1")
        print("<p>You entered "+answer)
        if answer == "1":
                correct += 1
                print(" Correct!")
        else:
                print(" Incorrect!")
else:
        num1 = int(form['num1'].value)
        num2 = int(form['num2'].value)
        ans = 0
        if op == "^":
                ans = num1 ^ num2
        elif op == "7":
                ans = num1 & num2
        elif op == "|":
                ans = num1 | num2
        else:
                ans = num1 << num2
        print("<p>Answer = "+str(ans))
        print("<p>You entered "+answer)
        if ans == int(answer):
                correct += 1
                print("  Correct!")
        else:
                print("  Incorrect!")

num1 = random.randint(0,15)
if op == "<<":
        num2 = random.randint(1,3)
else:
        num2 = random.randint(0,15)

if op == "7":
        op = "&"

percent = correct / float(number) * 100
percent = "{0:.2f}".format(percent)
stats = " Total: "+str(number) + "  Correct: "+ str(correct)
stats += "  Percentage: " + percent +"%"
print(stats)
print("<h2>")
print("Bitwise "+op)
print("</h2>")
print("<p>")
print('<form action = "./bitwise.py" method="GET">')
print(str(num1)+" "+op+" "+str(num2)+" =")
print('<input type="text" name="answer">')
print("<p>What operation next?<p>")
print('<input type="radio" name="operation" value="^">XOR')
print('<input type="radio" name="operation" value="7">AND')
print('<input type="radio" name="operation" value="|">OR')
print('<input type="radio" name="operation" value="<<">Left-shift')
print('<p>')
print('<input type="submit" name="group" value="submit">')
print('<input type="hidden" name="num1" value=')
print(str(num1)+">")
print('<input type="hidden" name="num2" value=')
print(str(num2)+">")
print('<input type="hidden" name="number" value=')
print(str(number+1)+">")
print('<input type="hidden" name="correct" value=')
print(str(correct)+">")
print("</form>")
print("</body></html>")
                             

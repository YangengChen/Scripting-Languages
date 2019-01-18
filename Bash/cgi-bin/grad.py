#!/usr/bin/env python

import cgi

def getReply(first, last):
        return first + " " + last

print("Content-type: text/html\r\n\r\n")
print("<html>")
print("<body>")
print("<title>Grad Response</title>")
print("<h1>Happy Graduation</h1>")
form = cgi.FieldStorage()

first = form['firstname'].value
last = form['lastname'].value
reply = getReply(first, last)

print("<p>" + reply)
print("<h2>You did it!</h2>")
print("</body>")
print("</html>")

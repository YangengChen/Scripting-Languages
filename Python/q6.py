filename = input("Enter input file name:")
file = open(filename)

line = file.readline()
entries = [None]

while line:
    depth = len(line.split("/"))
    if len(entries) <= depth:
        entries.append(0)
    line = file.readline() #Ignore this line
    line = file.readline()
    while line.startswith("\n") == False:
        if line == '': break
        #entryCount = len(line.split())
        entries[depth] += 1
        line = file.readline()
    line = file.readline()

file.close()
results = "{"
for i in range(1,len(entries)):
    results += str(i)+": "+str(entries[i])
    if i+1 != len(entries):
        results += ","
results += "}"
print(results)

import sys
#import os.path

def convertFile(filename):
    file = open(filename)
    fileWrite = open(filename+"3", "w")
    line = file.readline()

    while line:
        if line.find("print") != -1:
            sepLine = line.split()
            for ele in line:
                if(ele != '\t' and ele != ' '): break
                fileWrite.write(ele)
                #print(ord(ele))
            fileWrite.write(sepLine[0])
            fileWrite.write("(")
            for i in range(1, len(sepLine)):
                fileWrite.write(sepLine[i]+" ")  
            fileWrite.write(")\n")
        elif line.find("input") != -1:
            print(line)
            prompt = input("What's the input type?:")
            for ele in line:
                if(ele != '\t' and ele != ' '): break
                fileWrite.write(ele)
            sepLine = line.split()
            if line.find("num") != -1 or line.find("score") != -1:
                sepLine[2] = "int( "+sepLine[2]
            else:
                sepLine[2] = "float( "+sepLine[2]
            for i in range(len(sepLine)):
                fileWrite.write(sepLine[i]+" ")
            fileWrite.write(")\n")
        else:
            fileWrite.write(line)
        line = file.readline()
    file.close()
    fileWrite.close()
    #os.rename(filename, os.path.splitext(filename)[0]+".py3")

if __name__ == "__main__":
    filename = sys.argv[1]
    convertFile(filename)

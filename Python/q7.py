import urllib.request

def extract(string, a, b):
    pos_a = string.find(a)
    if pos_a == -1: return ""
    pos_b = string.rfind(b)
    if pos_b == -1: return ""
    adjusted_pos_a = pos_a + len(a)
    if adjusted_pos_a >= pos_b: return ""
    return string[adjusted_pos_a:pos_b]

remotefile = urllib.request.urlopen("http://news.ycombinator.com/")
line = remotefile.readline().decode("utf-8")

websites = [None]*5
articles = [None]*5
mostPoints = [0]*5
while line:
    #print(line)
    if "<td align" in line:
        webname = ''.join(extract(line, "</center></td><td class=\"title\">", "\" class=").split("\""))
        article = extract(line, "storylink\">","</a><span")
        line = remotefile.readline().decode("utf-8")
        if "points" in line:
            points = int(extract(line, "\">", " points"))
            leastPoints = 999999
            index = 0
            for i in range(len(mostPoints)):
                if mostPoints[i] < leastPoints:
                    leastPoints = mostPoints[i]
                    index = i
            if mostPoints[index] < points:
                mostPoints[index] = points
                websites[index] = webname
                articles[index] = article
    line = remotefile.readline().decode("utf-8")

dct = {}
for i in range(len(mostPoints)):
    dct[mostPoints[i]] = websites[i]+">"+articles[i]

mostPoints.sort(reverse=True)

print("<html><body>")
for i in range(len(mostPoints)):
    print("#"+str(i+1)+": "+dct[mostPoints[i]]+", "+str(mostPoints[i])+" points</a><br><br>")
print("</body></html>")





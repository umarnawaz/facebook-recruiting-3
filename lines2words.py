import sys

count = 1
for line in sys.stdin:
    l = line.replace("\n","").split(" ")
    for word in l:
        print str(count)+"\t"+word
    count = count + 1

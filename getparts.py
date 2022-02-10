import regex as re

file=open("annotated-6A.txt","r")
#print(file.read())
pattern = r'\*+[A-Z]+[A-Z].*?\#'
txt = re.findall(pattern, file.read())
#print(txt)
for x in txt:
  print(" ".join(map(str,x.split()[1:-1])))
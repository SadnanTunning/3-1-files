dict = {}

file = open("input.txt","r")
output_file = open("sample_output.txt","w")


s = file.read()

words = s.split(" ")

for word in words:
    print(word)

for i in range(len(words)):
    words[i] = (words[i].strip()).lower()

    if words[i][-1] == "." or words[i][-1] == ",":
        words[i] = words[i][:-1]

print("---------")



for word in words:
    print(word) 
    if word in dict:
        dict[word] += 1
    else:
        dict[word] = 1

for x in dict:
    # print(x,":",dict[x])
    output_file.write(x+" : "+str(dict[x])+"\n")
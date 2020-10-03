filevar=open("input.txt","r")
char=filevar.read()
num_character=0
for i in char:
    num_character=num_character+1
print("The number of charcter in the input.txt file is")
print(num_character)    
filevar.close()

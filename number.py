#!/usr/bin/env python3


mennyi = int(input("Hany szamot generaljak? "))



count = 0

file1 = open("number.txt","w") 

while count < mennyi+1:
    print(count)
    file1.write(str(count))
    count += 1 



#!/usr/bin/env python3


mennyi = int(input("Hany szamot szamoljak? "))


n1, n2 = 0, 1
count = 0

file1 = open("fib.txt","w") 

while count < mennyi+1:
    print(count, n1)
    file1.write(str(n1))
    nth = n1 + n2
    n1 = n2
    n2 = nth
    count += 1 



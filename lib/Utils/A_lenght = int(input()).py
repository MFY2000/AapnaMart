import math

def group_size(n):
  n = int((math.sqrt(1+8*n)-1)/2) 
  n = (n*(n+1))//2
  return n
 
lenght = int(input())               
arr = list(map(int, input().split()))
size = [(group_size(lenght-i) + 1) for i in range(lenght)]
output = [sum(arr[i:size[i]]) for i in range(lenght)]

print(max(output))

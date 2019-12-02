var
  k: array[5, int]
  l = @['p', 'w', 'r']
  m = "Tom and Jerry"

for i in 0 .. 4:
  k[i] = 7 * i
echo k

l[1] = 'q'
echo l

m[8 .. 9] = "Ba"
echo m

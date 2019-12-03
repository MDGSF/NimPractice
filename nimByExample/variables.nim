proc getAlphabet(): string =
  var accm = ""
  for letter in 'a' .. 'z':
    accm.add(letter)
  return accm

# Computed at compilation time
const alphabet = getAlphabet()
echo alphabet

var
  a = "foo"
  b = 0
  c: int

let
  d = "foo"
  e = 5
  #f: float
  
a.add("bar")
b += 1
c = 3

echo a
echo b
echo c
echo d
echo e

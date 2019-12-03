proc countTo(n: int): iterator(): int = 
  return iterator(): int =
    var i = 0
    while i <= n:
      yield i
      inc i

let countTo20 = countTo(20)
echo countTo20()

var output = ""

while true:
  let next = countTo20()
  if finished(countTo20):
    break
  output.add($next & " ")

echo output

output = ""
let countTo9 = countTo(9)
for i in countTo9():
  output.add($i)
echo output


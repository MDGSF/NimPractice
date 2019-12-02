proc findBiggest(a: seq[int]): int = 
  for number in a:
    if number > result:
      result = number

let d = @[3, -5, 11, 33, 7, -15]
echo findBiggest(d)

# The return type is int, the result variable is initialized with 0
let d2 = @[-1, -2, -3]
echo findBiggest(d2)

proc keepOdds(a: seq[int]): seq[int] = 
  # result = @[]
  for number in a:
    if number mod 2 == 1:
      result.add(number)

let f = @[1, 6, 4, 43, 57, 34, 98]
echo keepOdds(f)

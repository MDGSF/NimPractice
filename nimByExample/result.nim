proc getAlphabet(): string = 
  for letter in 'a' .. 'z':
    result.add(letter)

const alphabet = getAlphabet()
echo alphabet

proc unexpected1(): int = 
  var result = 5
  result += 5

proc unexpected2(): int = 
  var result = 5
  result += 5
  return result

proc unexpected3(): int = 
  result = 5

echo unexpected1()
echo unexpected2()
echo unexpected3()

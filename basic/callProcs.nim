proc findMax(x: int, y: int): int =
  if x > y:
    return x
  else:
    return y
let 
  a = findMax(987, 789)
  b = findMax(123, 321)
  c = findMax(a, b)
echo a
echo b
echo c


proc echoLanguageRating(language: string) = 
  case language
  of "Nim", "nim", "NIM":
    echo language, " is the best language!"
  else:
    echo language, " might be a second-best language."


proc changeArgument(argument: var int) = 
  argument += 5
var ourVariable = 10
changeArgument(ourVariable)
echo ourVariable
changeArgument(ourVariable)
echo ourVariable


var x = 100
proc echoX() = 
  echo x
  x += 1
echoX()
echoX()

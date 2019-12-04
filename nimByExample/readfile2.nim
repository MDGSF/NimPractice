proc test() = 
  let f = open("kittens.txt")
  defer: f.close()
  let firstLine = f.readLine()
  echo firstLine

test()

proc test() = 
  let lines = ["Play", "Eat", "Sleep"]
  let f = open("catactivities.txt", fmWrite)
  defer: f.close()
  for line in lines:
    f.writeLine(line)

test()

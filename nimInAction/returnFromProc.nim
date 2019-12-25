proc implicit: string = 
  "I will be returned"

proc discarded: string = 
  discard "I will be returned"

proc explicit: string = 
  return "I will be returned"

proc resultVar1: string = 
  result = "I will be returned"

proc resultVar3: string = 
  result = "I will be returned"
  # "I will cause an error"
  
proc message(recipient: string): auto = 
  "Hello " & recipient

assert implicit() == "I will be returned"
assert discarded() == ""
assert explicit() == "I will be returned"
assert resultVar1() == "I will be returned"
assert message("Dom") == "Hello Dom"

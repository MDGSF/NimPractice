proc second() = 
  raise newException(IOError, "Somebody set up up the bomb")

proc first() = 
  try:
    second()
  except:
    echo("Cannot perform second action because: " &
      getCurrentExceptionMsg())

first()

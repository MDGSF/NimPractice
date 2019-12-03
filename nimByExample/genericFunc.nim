let zero = ""
proc `+`(a, b: string): string =
  a & b

proc `*`[T](a: T, b: int): T =
  result = zero
  for i in 0..b-1:
    result = result + a

echo "a" * 10

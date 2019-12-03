import sugar

proc map(str: string, fun: (char) -> char): string = 
  for c in str:
    result &= fun(c)

echo "foo".map((c) => char(ord(c) + 1))

echo "foo".map(proc (c: char): char = char(ord(c) + 1))

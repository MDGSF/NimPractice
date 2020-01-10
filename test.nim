proc count10(): int =
  for i in 0 .. <10:
    result.inc

echo(count10())

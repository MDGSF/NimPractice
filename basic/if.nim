let
  a = 11
  b = 22
  c = 999

echo "a = ", a
echo "b = ", b
echo "c = ", c

if a < b:
  echo "a is smaller than b"
  if 10*a < b:
    echo "not only that, a is *much* smaller than b"

if b < c:
  echo "b is smaller than c"
  if 10*b < c:
    echo "not only that, b is *much* smaller than c"

if a + b > c:
  echo "a and b are larger than c"

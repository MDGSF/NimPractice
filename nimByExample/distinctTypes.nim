type
  Dollars* = distinct float

proc `*` *(a, b: Dollars): Dollars {.borrow.}
proc `+` *(a, b: Dollars): Dollars {.borrow.}

var a = 20.Dollars

# a = 25

a = 25.Dollars
# how to echo???
# echo a

var b = 20.Dollars * 20.Dollars


type 
  Foo = object
    a: int
  MyFoo {.borrow: `.`.} = distinct Foo

var value: MyFoo
echo value.a


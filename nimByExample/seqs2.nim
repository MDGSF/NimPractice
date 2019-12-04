proc doSomething(mySeq: seq[int]) = 
  # mySeq[0] = 2 # compile time error
  var varMySeq = mySeq # copy the seq
  varMySeq[0] = 99
  assert varMySeq[0] == 99

proc doSomething2(mySeq: var seq[int]) =
  mySeq[0] = 2

var testSeq = @[1, 2, 3]
doSomething2(testSeq)
echo testSeq

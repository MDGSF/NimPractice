import tables, hashes

type 
  Dog = object
    name: string

proc hash(x: Dog): Hash =
  result = x.name.hash
  result = !$result

var dogOwners = initTable[Dog, string]()
dogOwners[Dog(name: "Charlie")] = "John"

echo dogOwners
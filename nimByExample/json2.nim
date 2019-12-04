import json

let jsonObject = """{"name": "Sky", "age": 32}"""
let jsonArray = """[7, 8, 9]"""

let parsedObject = parseJson(jsonObject)
let name = parsedObject["name"].getStr()
echo name

let parsedArray = parseJson(jsonArray)
let eight = parsedArray[1].getInt()
echo eight

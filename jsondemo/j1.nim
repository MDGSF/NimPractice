import json

type 
  Message* = object
    username*: string
    message*: string
    data*: string

proc `$`(msg: Message): string =
  $msg.username & " " & msg.message & " " & msg.data

let js = """{"username": "hj", "message": "msg", "data": "data"}"""
let jsonnode = parseJson(js)
let msg = to(jsonnode, Message)
echo(msg)


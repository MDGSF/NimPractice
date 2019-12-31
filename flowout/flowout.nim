import msgpack4nim, streams
import ws, asyncdispatch, asynchttpserver

type
  Subscribe = ref object
    source: string
    topic: string
    data: string
  
  RawMessage = ref object 
    source: string
    topic: string
    data: string
    time: int64

proc `$`(subscribe: Subscribe): string =
  $subscribe.source & " " & $subscribe.topic & " " & $subscribe.data

proc `$`(raw: RawMessage): string =
  $raw.source & " " & $raw.topic & " " & $raw.time & " " & $raw.data

proc newSubscribe(source: string, 
  topic: string,
  data: string): Subscribe =
  Subscribe(source: source, topic:topic, data: data)

proc loop() {.async.} = 
  let top1 = newSubscribe("flowout", "subscribe", "topic:getlog")
  echo top1

  let top1Bytes = pack(top1)
  echo top1Bytes

  let top1Str = stringify(top1Bytes)
  echo top1Str

  var ws = await newWebSocket("ws://127.0.0.1:24012")
  await ws.send(top1Bytes, Opcode.Binary)
  while true: 
    let data = await ws.receiveBinaryPacket()
    echo data

    var dataStream = newStringOfCap(len(data))
    for ch in data:
      add(dataStream, char(ch))

    echo dataStream

    echo stringify(dataStream)

    var raw: RawMessage
    unpack(dataStream, raw)
    echo raw

  ws.close()

when isMainModule:
  echo "flowout"
  waitFor loop()

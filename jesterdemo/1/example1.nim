import htmlgen
import jester
import json
import osproc
import os
import strformat

routes:
  get "/":
    resp h1("Hello World")

  get "/hello/@name":
    resp "Hello " & @"name"

  post "/basic":
    echo "params = ", request.params
    echo "matches = ", request.matches
    echo "body = ", request.body
    echo "headers = ", request.headers
    echo "formData = ", request.formData
    echo "port = ", request.port
    echo "host = ", request.host
    echo "appName = ", request.appName
    echo "pathInfo = ", request.pathInfo
    echo "secure = ", request.secure
    echo "path = ", request.path
    echo "cookies = ", request.cookies
    echo "ip = ", request.ip

    echo "script = ", @"script"
    echo "args = ", @"args"
    resp "basic"

  post "/api/v1/cgi":
    type 
      ReqObj = object
        script: string
        args: seq[string]

    var jsonobj = parseJson(request.body)
    var reqobj = to(jsonobj, ReqObj)
    var p = startProcess(reqobj.script, 
      "", 
      reqobj.args, 
      nil,
      {poEchoCmd, poUsePath, poStdErrToStdOut})
    var ret = waitForExit(p)
    p.close()
    echo "ret = ", ret
    resp "success"

  post "/api/v1/cgi2":
    type 
      ReqObj2 = object
        cmd: string
    var jsonobj = parseJson(request.body)
    var reqobj = to(jsonobj, ReqObj2)
    var ret = execShellCmd(reqobj.cmd)
    resp fmt("success, ret = {ret}")


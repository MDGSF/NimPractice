import htmlgen
import jester

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

  get "/api/v1/cgi":
    echo request.params

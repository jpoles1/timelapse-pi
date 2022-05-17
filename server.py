from http.server import HTTPServer, BaseHTTPRequestHandler
import ssl


httpd = HTTPServer(('localhost', 8000), BaseHTTPRequestHandler)

httpd.socket = ssl.wrap_socket (httpd.socket, 
        keyfile="cert/key.pem", 
        certfile='cert/cert.pem', server_side=True)

httpd.serve_forever()

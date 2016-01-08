#!/usr/bin/env python

# This should work, too:
# python -m SimpleHTTPServer $port

import SimpleHTTPServer as server
import SocketServer as ss
handler = server.SimpleHTTPRequestHandler
httpd = ss.TCPServer(("", 2222), handler)
httpd.serve_forever()

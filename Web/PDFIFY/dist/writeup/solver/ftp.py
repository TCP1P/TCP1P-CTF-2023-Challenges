from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer
import sys


authorizer = DummyAuthorizer()
authorizer.add_anonymous(".")
handler = FTPHandler
handler.authorizer = authorizer
server = FTPServer(("0.0.0.0", sys.argv[1]), handler)
server.serve_forever()

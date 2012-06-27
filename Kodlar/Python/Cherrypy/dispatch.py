# Cherry ile adres ağacı dallanması
# http://localhost:8080/index sayfasında HelloWorld() çalışıyor.
# http://localhost:8080/onepage/ sayfasında OnePage() çalışıyor.
# http://localhost:8080/onepage/twopage/ sayfasında TwoPages() çalışıyor.
import cherrypy
class TwoPage(object):
    def index(self):
        return "two page!"
    index.exposed = True

class OnePage(object):
    twopage=TwoPage()
    def index(self):
        return "one page!"
    index.exposed = True

class HelloWorld(object):
    onepage = OnePage()

    def index(self):
        return "hello world"
    index.exposed = True

cherrypy.quickstart(HelloWorld())

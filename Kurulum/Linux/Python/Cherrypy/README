# CherryPy modülü kurulumu

wget komutu ile paketi indiriyoruz.

* wget http://download.cherrypy.org/cherrypy/3.2.0/CherryPy-3.2.0.tar.gz

sıkıştırılmış dosyayı açıyoruz

* tar -xvf CherryPy-3.2.0.tar.gz && cd CherryPy-3.2.0/

kurulumu gerçekleştiriyoruz

* sudo python3.2 setup.py install

test ediyoruz.

* python3.2 -c "import cherrypy"

yukarıdaki komut hata dönmezse kurulumumuz başarıyla gerçeklenmiş demektir.

#Kod denemesi

import cherrypy
 
class MerhabaDunya:
    def index(self):
        return "Merhaba Dunya!"
    index.exposed = True
 
cherrypy.quickstart(HelloWorld())

yukarıdaki kod kaydedilip çalıştırılır. http://localhost:8080/ adresinde "Merhaba Dünya" dizgesi görülür. 

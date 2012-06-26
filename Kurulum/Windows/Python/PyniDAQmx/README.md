
Python - niDAQmx bağlantısı
------

Windows bir makineye pynidaqmx kütüphanesi eklenerek python programlama dili ile daq kart programlaması için gerekli ortam sağlanmıştır.


Gerekli olan paketler
---------------------

*  NI 6024E driver [indir1]
*  Numpy kütüphanesi [indir2]
*  PyniQAQmx kütüphanesi [indir3]

DAQ kartın sürücüleri kurulduktan sonra çalışıp çalışmadığı [Traditional NI-DAQ (Legacy)] ile kontrol edilir. Kanallara akımlar verilip osiloskop ile denenir.

Numpy kütüphanesi python kütüphanelerine eklenir. Python ile "import numpy" dizgesi çalıştırılarak çalışması denetlenir. 

PyniQAQmx kütüphanesi githubtan clone edilir. Komut satırından PyniQAQmx dizinine ulaşılır ve "python setup.py install" dizgesi çalıştırılır.

*Kütüphanenin çalşıp çalışmadığını [http://code.google.com/p/pylibnidaqmx/] adresindeki kodlar çalıştırılarak denenebilir. Kodlar denenirken  NI 6024E modelinin iki analog çıkışı olduğu unutulmamalı 'Dev1/ao2' kısmına dikkat edilmelidir.

Uyarılar
------
Yukarıdaki işlemler windows XP yüklü bir bilgisayar baz alınarak yazılmıştır.

  [indir3]:https://github.com/imrehg/pylibnidaqmx
  [indir2]:http://scipy.org/Download
  [indir1]:http://www.ni.com/white-paper/6910/en
  [Traditional NI-DAQ (Legacy)]:http://joule.ni.com/nidu/cds/view/p/id/570/lang/en
  [http://code.google.com/p/pylibnidaqmx/]:http://code.google.com/p/pylibnidaqmx/

daqhardwareinfo = daqhwinfo
daqinstalledadaptors = daqhardwareinfo.InstalledAdaptors

daqregister ('adaptorname')

daqwinsoundinfo = daqhwinfo ('winsound')

ai = analoginput ('winsound', 0);
ai

ao = analogoutput ('winsound');
ao

daqhwinfo (ai)

DAQHELP
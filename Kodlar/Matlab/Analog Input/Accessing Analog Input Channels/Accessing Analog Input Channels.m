%Ba�lamak i�in bir analog giri� nesnesi, ai, winsound cihaz i�in olu�turulur.
ai = analoginput('winsound');

%ADDCHANNEL komutu ile bir analog giri� nesnesi bir kanal ekleyebilirsiniz.
ch1 = addchannel(ai, 1);
ch1

%1. de�i�im y�ntemi
ch1.Units = 'ceng';
ch1

%2. de�i�im y�ntemi
set(ai.Channel, 'SensorRange', [-0.5 0.5]);
set(ai.Channel, 'InputRange', [-1 1]);
set(ai.Channel, 'UnitsRange', [0 120]);
set(ai.Channel, 'Units', 'dB');
ch1

start(ai)
[d,t] = getdata(ai);
plot(t,d);
zoom on



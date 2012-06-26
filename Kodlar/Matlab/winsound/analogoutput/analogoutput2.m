ao = analogoutput('winsound', 0);
addchannel(ao, [1 2]);
load handel
set(ao, 'StandardSampleRates','Off')
set(ao, 'SampleRate', Fs);
Fs
data = [y y];
putdata(ao, data);
startindex = 1;
increment = 500;
start(ao);
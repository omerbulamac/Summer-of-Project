ai = analoginput('winsound');
addchannel(ai, 1);
ai.SampleRate = 8000;
ai.SamplesPerTrigger = 40000;
ai.TriggerType = 'Immediate';
start(ai)
d = getdata(ai);
plot(d);

ao = analogoutput('winsound', 0);
addchannel(ao, 1);
data = d;
putdata(ao, data);
start(ao)
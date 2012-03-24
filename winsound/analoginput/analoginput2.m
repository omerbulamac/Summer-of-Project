ai = analoginput('winsound');
addchannel(ai, 1);
ai.SampleRate = 8000;
ai.SamplesPerTrigger = 40000;
ai.TriggerType = 'Immediate';

start(ai)
[d,t] = getdata(ai);
plot(t,d);
zoom on

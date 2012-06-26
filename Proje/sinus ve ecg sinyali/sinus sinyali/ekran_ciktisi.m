clc;clear all;

AO = analogoutput('nidaq','Dev1');
chan = addchannel(AO,0);

duration = 5;
set(AO,'SampleRate',10000)
set(AO,'TriggerType','Manual')
ActualRate = get(AO,'SampleRate');
len = ActualRate*duration;
data = 4*sin(linspace(0,2*pi*500,len))';
putdata(AO,data);

get (AO, 'SamplesOutput')

plot(data)

start(AO)
trigger(AO)
wait(AO,5)

delete(AO)
clear AO
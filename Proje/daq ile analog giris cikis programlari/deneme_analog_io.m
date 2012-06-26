% 
% http://www.mathworks.com/help/toolbox/daq/f8-23031.html
%
clc; clear all;

AO = analogoutput('nidaq', 'Dev1');
AI = analoginput('nidaq', 'Dev1');

chan = addchannel(AO, 0);
chan = addchannel(AI, 1);  % ACH0 68 nolu pin

% output
duration = 1;   % data verisinin osilaskop ekranýnda kaç saniye boyunca gösterilme süresi
set(AO, 'SampleRate', 10000)
set(AO, 'TriggerType', 'Manual')
ActualRate = get(AO,'SampleRate');
len = ActualRate*duration;
data = 1*sin(linspace(0,2*pi*50,len))';  % ekrana çizilecek sinüs sinyali tanýmlanýyor

putdata(AO, data);

% input
duration = 1; %1 second acquisition
set(AI, 'SampleRate',10000)
ActualRate = get(AI, 'SampleRate');
set(AI,'SamplesPerTrigger',duration*ActualRate)
set(AI,'TriggerType','Manual')
blocksize = get(AI,'SamplesPerTrigger');
Fs = ActualRate;

start(AO)
start(AI)
trigger(AO)
trigger(AI)
wait(AI, duration + 1)
wait(AO, duration + 1)

data2 = getdata(AI);
figure(2), plot(data2)

delete(AO)
delete(AI)
clear AI AO
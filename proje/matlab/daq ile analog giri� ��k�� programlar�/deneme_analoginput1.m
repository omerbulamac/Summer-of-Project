% 
% http://www.mathworks.com/help/toolbox/daq/f8-23031.html
%


AI = analoginput('nidaq', 'Dev1');

chan = addchannel(AI, 1);  % ACH0 68 nolu pin

duration = 3; %1 second acquisition
set(AI, 'SampleRate', 10000)
ActualRate = get(AI, 'SampleRate');
set(AI, 'SamplesPerTrigger', duration * ActualRate)
set(AI, 'TriggerType', 'Manual')
blocksize = get(AI, 'SamplesPerTrigger');
Fs = ActualRate;

start(AI)
trigger(AI)
wait(AI, duration + 1)

data2 = getdata(AI);
figure(88), plot(data2)

delete(AI)
clear AI
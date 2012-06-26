duration = 10;
ai = analoginput('winsound')
addchannel(ai, 1);
sampleRate = get(ai, 'SampleRate')
get(ai, 'SamplesPerTrigger')
requiredSamples = floor(sampleRate * duration);
set(ai, 'SamplesPerTrigger', requiredSamples);
waitTime = duration * 1.1 + 0.5
start(ai)
tic
wait(ai, waitTime);
toc
[data, time] = getdata(ai);
figure;
plot(time,data);
xlabel('Time (s)'); 
ylabel('Signal (Volts)');
title('Data Acquired using Microphone for 10 seconds');
grid on;
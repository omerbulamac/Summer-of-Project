ao = analogoutput('winsound');
addchannel(ao, [1 2]);

set(ao, 'SampleRate', 8000);

t = linspace(0,2*pi,16000);
y = sin(500*t);
y1 = sin(800*t);
y2 = sin(1000*t);

putdata(ao, [y' y']);
putdata(ao, [y1' y1']);
putdata(ao, [y2' y2']);

set(ao, 'TriggerType', 'Immediate');

start(ao);
wait(ao,15);
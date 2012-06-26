ao = analogoutput('winsound', 0);
addchannel(ao, 1);
load handel
data = y;
putdata(ao, data);
start(ao);
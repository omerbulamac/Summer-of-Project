ai = analoginput('winsound');
addchannel(ai, 1);
start(ai)
[d,t] = getdata(ai);
plot(t,d);
zoom on

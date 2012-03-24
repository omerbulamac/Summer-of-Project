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
while isrunning(ao)  % do the plot
    while (ao.SamplesOutput < startindex + increment -1), end
    try
        x = ao.SamplesOutput;
        plot(y(x:x+increment-1));
        set(gca, 'YLim', [-0.8 0.8], 'XLim',[1 increment])
        drawnow;
        startindex =  startindex+increment;
    end
end
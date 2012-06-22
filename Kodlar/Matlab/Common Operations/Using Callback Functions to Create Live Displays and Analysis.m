ai = analoginput('winsound');
addchannel(ai, 1);
set(ai, 'SampleRate', 8000);

set(ai, 'TriggerType', 'immediate');
set(ai, 'SamplesPerTrigger', 8000);
set(ai, 'TriggerRepeat', 4);

type daqcallback

set(ai, 'StartFcn', @daqcallback);
set(ai, 'StopFcn', @daqcallback);
set(ai, 'TriggerFcn', @daqcallback);

start(ai)
wait(ai,6);

% ------------------------------------------------------------------------

set(ai, 'TriggerType', 'immediate');
set(ai, 'SamplesPerTrigger', 400000);
set(ai, 'TriggerRepeat', 0);

type daqtimerplot

set(ai, 'TimerPeriod', 0.1);
set(ai, 'TimerFcn', @daqtimerplot);
set(ai, {'StartFcn', 'StopFcn', 'TriggerFcn'}, {'', '', ''});

start(ai)
wait(ai,6);
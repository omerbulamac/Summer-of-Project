ai = analoginput('winsound');
ch = addchannel(ai, [1 2], {'Left';'Right'});

ai.Tag = 'ai1';
ai.UserData = [1 4 2];
ai.SampleRate = 22050;

save fname ai
delete(ai);

load fname
ai


% ---------------------------

ai1 = ai;

whos ai1 ai

save fname ai
original_Tag = ai.Tag;
original_UserData = ai.UserData;
original_SampleRate = ai.SampleRate;
ai.Tag = 'myai1';
ai.UserData = [1 4 2];
ai.SampleRate = 44100;
% load fname
ai.Tag
original_Tag

% ---------------------------------------

obj2mfile(ai, 'samsun');
ai = samsun

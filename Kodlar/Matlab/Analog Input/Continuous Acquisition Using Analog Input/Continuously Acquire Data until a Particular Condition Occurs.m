ai = analoginput('winsound');
addchannel(ai,1);
set(ai,'SamplesPerTrigger',Inf);
daqmem(ai)
set(ai,'TimerPeriod',0.5);
figure;
P = plot(zeros(1000,1));
T = title(['Discrete Fourier Transform Plot (fft),Number of callback function calls: ', num2str(0)]);
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
grid on;
set(ai,'TimerFcn',{@demoai_continuous_timer_callback,P,T});
start(ai);
while(strcmpi(get(ai,'Running'),'On')) 
   pause(0.5);
end


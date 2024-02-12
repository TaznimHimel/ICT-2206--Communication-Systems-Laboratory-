%Code for PSK

t=0:.001:1; % For setting the sampling interval
fm=input('Enter frequency of Message Signal: ');
fc=input('Enter frequency of Carrier Signal: ');
amp=input('Enter Carrier & Message signal Amplitude: ');
 
% Carrier wave 
c=amp.*sin(2*pi*fc*t);% Generating Carrier wave
subplot(3,1,1)
plot(t,c)
xlabel('Time')
ylabel('Amplitude')
title('Carrier')
 
% Binary Pulse (Message Signal) 
m=square(2*pi*fm*t);
subplot(3,1,2)
plot(t,m)
xlabel('Time')
ylabel('Amplitude')
title('Message Signal')  
 

% PSK Signal (Sine wave multiplied with square wave in order to generate PSK) 
x=c.*m;
subplot(3,1,3)
plot(t,x)
xlabel('Time')
ylabel('Amplitude')
title('PSK Signal')

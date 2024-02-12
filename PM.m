%Taking Input
%======================================================
vm = input('Enter the amplitude of message signal = ');
vc = input('Enter the amplitude of carrier signal = ');
fm = input('Enter the message frequency = ');
fc = input('Enter the carrier frequency = ');
m = input('Enter modulation index = ');
%======================================================

%Time Interval
t = 0:0.001:1;

%Message Signal 
sm = vm*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,sm);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('Message Signal');

%Carrier Signal
sc = vc*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,sc);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('Carrier Signal');

%Phase Modulated Signal
y = vc*sin(2*pi*fc*t+m.*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,y);
xlabel('Time ---->');
ylabel('Amplitude ---->');
title('PM Wave');
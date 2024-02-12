%Code for FM 

%===================================================
%Taking Input
Ac=input('Enter carrier signal amplitude: ');
Am=input('Enter message signal amplitude: ');
fc=input('Enter carrier signal frequency: ');
fm=input('Enter message signal frequency: '); % fm<fc
m=input('Enter modulation index: ');
%===================================================

t = 0:0.001:1; %upto 1000 samples

msg = Am*sin(2*pi*fm*t);
subplot(3,1,1); %plotting message signal
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('Message ');

carrier = Ac*sin(2*pi*fc*t);
subplot(3,1,2); %plotting carrier signal
plot(t,carrier);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

y = Ac*sin(2*pi*fc*t+m.*cos(2*pi*fm*t));
subplot(3,1,3);%plotting FM (Frequency Modulated) signal
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal');

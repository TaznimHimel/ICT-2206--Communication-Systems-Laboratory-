%Code for AM 

%===================================================
%Taking Input
Ac=input('Enter carrier signal amplitude: ');
Am=input('Enter message signal amplitude: ');
fc=input('Enter carrier signal frequency: ');
fm=input('Enter message signal frequency: ');% fm<fc
k=input('Enter modulation index: ');
%===================================================

t = 0 : 0.001 : 1;
m = Am * sin (2 * pi * fm * t); %message signal
c = Ac * cos (2 * pi * fc * t); %carrier signal
y = (1 + k * m).* c; %modulated signal


subplot(311);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message signal')

subplot(312)
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');

subplot(313);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Modulated signal');
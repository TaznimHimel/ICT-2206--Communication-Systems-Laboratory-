%Phase Modulation
%Taking Input
vm = input('Enter message signal Amplitude: ');
vc = input('Enter carrier signal Amplitude: ');
fm = input('Message Signal Frequency: ');  %fm<fc
fc = input('Carrier Signal Frequency: ');
m = input('Enter Modulation index: ');  %m <= 1
t = 0:0.001:1;

%Equation of the message signal
phase_m = pi/3;
y1 = vm*cos(2*pi*fm*t+phase_m);
subplot(3,1,1);
plot(t,y1,'blue','LineWidth',1);

%cEquation of the Carrier signal
phase_c = 2*pi/6;
y2 = vc*cos(2*pi*fc*t+phase_c);
subplot(3,1,2);
plot(t,y2,'magenta','LineWidth',1);


%instantaneous voltage of resulting
y = vc*cos(2*pi*fc*t+m.*cos(2*pi*fm*t+phase_m));
subplot(3,1,3);
plot(t,y,'red','LineWidth',1);

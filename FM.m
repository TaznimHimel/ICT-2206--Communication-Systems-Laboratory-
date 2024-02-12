%Taking Input
vm = input('Enter Message signal Amplitude: ');
vc = input('Enter Carrier signal Amplitude: ');
fm = input('Message Signal Frequency: ');  %fm<fc
fc = input('Carrier Signal Frequency: ');
m = input('Enter Modulation index: ');  %m <= 1
t = 0:0.001:1;

%Equation of the Message signal
y1 = vm*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,y1,'blue','LineWidth',1);

%Equation of Carrier Signal
y2 = vc*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t,y2,'magenta','LineWidth',1);


%instantaneous voltage of resulting
y = vc*cos(2*pi*fc*t+m.*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,y,'red','LineWidth',1);

%input 2 4 5 100 10
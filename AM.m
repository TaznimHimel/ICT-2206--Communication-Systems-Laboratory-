%Taking Input
Am = input('Enter message signal amplitude: ');
Ac = input('Enter carrier signal amplitude: ');
fm = input('message frequency: ');  %fm<fc
fc = input('carrier frequency: ');
 m =  Am/Ac; %Modulation Index  %m <= 1

t = 0:0.001:1;

%Equation of the Message signal
y1 = Am*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,y1,'blue','LineWidth',1);

%Equation of Carrier signal
y2 = Ac*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,y2,'magenta','LineWidth',1);

%Instantaneous voltage of resulting
y = Ac*(1+m*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(3,1,3);
plot(t,y,'red','LineWidth',1);
fprintf('Mudulation index: %.2f\n',m);
%input 2 4 5 100
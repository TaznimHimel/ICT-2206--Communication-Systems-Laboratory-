%Amplitude Shift Keying
clc;
close all;
clear all;

fc = 100; %input('Enter the freq of sine wave carrier:');
fp = 10;  %input('Enter the freq of periodic Binary pulse(message):');
amp =4;   %input('Enter the amplitude(For carrier and BInary pulse message):');

t = 0:0.001:1;

%Carrier Generating
c = amp.*sin(2*pi*fc*t);
subplot(3,1,1);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier wave');

%For Generating Square wave message
m = amp/2.*square(2*pi*fp*t)+(amp/2);
subplot(3,1,2);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message Pulse');

%The Shift Keyed Wave
w = c.*m;
subplot(3,1,3);
plot(t,w);
xlabel('Time');
ylabel('Amplitude');
title('Amplitude shift keying');
%100 10 4
close all;
clear all; 
clc;

f = 3;
phase = 5;
a = 10;

t = 0:0.005:0.5;
s = a*cos(2*pi*f*t+phase);
figure;
suptitle(sprintf('Частота: %d, Фаза: %d, Амплитуда: %d', f, phase, a));
subplot(1,2,1);
plot(t,s);
axis([0 0.5 -10 10]);
subplot(1,2,2);
plot(abs(fft(s,1024)));
%HIGH PASS FILTER 
clc;
am=input('type in the order of filter=');
r=input('type in the pass band of filter=');
w=input('type in the passband of frequency edge=');
[b,a]=cheby1(am,r,w,'high');
disp('Numerator polynomial');
disp(b);
disp('Denominator polynomial');
disp(a);
w=0:0.2/pi:pi;
h=freqz(b,a,w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('Normalised frequency');
ylabel('gain(dB)');
title('High Pass Filter');
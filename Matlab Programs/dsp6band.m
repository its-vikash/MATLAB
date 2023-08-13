%BAND PASS FILTER: 
N=input('Enter the filter order=');
M=N/2;
w1=input('Lower pass band edge frequency=');
w2=input('Upper pass band edge frequency=');
w=[w1,w2];
[b,a]=butter(M,w);
disp('Numerator polynomial');
disp(b);
disp('Denominator polynomial');
disp(a);
w=0:0.02/pi:pi;
h=freqz(b,a,w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('Normalized the frequency');
ylabel('Gain,dB');
title('Butterworth Band Pass Filter');

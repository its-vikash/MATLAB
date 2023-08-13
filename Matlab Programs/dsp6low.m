%LOW PASS FILTER:

N=input('Enter the filter order=');
M=N/2;
w=input('Enter the high frequency='); 
[b,a]=butter(M,w,'low');
disp('Numerator polynomial');
disp(b);
disp('Denominator polynomial');
disp(a);
w=0:0.02/pi:pi;
h=freqz(b,a,w);
gain=20*log10(abs(h));
stem(w/pi,gain);
grid;
xlabel('Normalized frequency');
ylabel('Gain,db');
title('Butterworth Low Pass Filter');

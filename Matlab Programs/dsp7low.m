
%LOW PASS FILTER

N=input('Type the order of filter =');
R=input('Type passband ripple=');
S=input('Type min. stopband attenuation=');
W=input('Type the passband edge frequency=');
[b,a]=ellip(N,R,S,W,'low');
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
ylabel('gain(db)');
title('Elliptic LPF - Vikash Patel');

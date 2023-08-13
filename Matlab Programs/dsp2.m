clc;
clear all;
clf;
a=[2,0,7,1];
b=[5,2,7,9,1];
c=conv(a,b);
%N=leng,th(c)-1;
%n=0: 1 :N;
figure;
subplot(3,1,1);
stem(a);
ylabel('Amplitude');
xlabel( '(a)n');
subplot(3, 1 ,2);
stem(b)
ylabel('Amplitude');
xlabel('(b)n');
disp('Out sequence=');
subplot(3,1,3);
stem(c)
xlabel('Time index n');
ylabel('Amplitude');
title('Convolution of two sequences - Aman Chaudhary')

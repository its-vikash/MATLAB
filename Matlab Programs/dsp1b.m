a=input('Enter the real part a=');
b=input('Enter the imaginary part b=');
k=input('constant k=');
x=input('variable x=');
c=a+i*b;
y=k*c.^x;
disp(real(y))
stem(x,real(y))
xlabel('Frequency - Vikash Patel');
ylabel('Amplitude');
title('Real part of sequence');

close all; 
clear all;
% creating time stamp for the signal
n = -10:1:10;
% Generating Unit impulse sequence
impulse = [zeros(1,10),ones(1,1),zeros(1,10)];
% Plotting the unit impulse sequence
stem(n, impulse);
xlabel('x-input');
ylabel('output');
title(' Unit Impulse Sequence - Vikash Patel');
axis([-10 10 0 1.2]);
clc;
clear all;
close all;
base = [1,1;1,-1]*(1/sqrt(2));
temp = base;
ip = input('enter the order of hadamard matrix:');
for i = 2:ip
    temp = [temp, temp;temp -temp]*(1/sqrt(2));
end
display(temp);

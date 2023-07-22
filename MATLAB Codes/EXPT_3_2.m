clc
close all
clear all
I = imread('peppers.png');
figure, imshow(I) 
title('original image');

J = imresize(I, 2,'nearest');
figure, imshow(J)
title('scaled image'); 

J = imresize(I, 0.5,'nearest');
figure, imshow(J)
title('reduced image'); 
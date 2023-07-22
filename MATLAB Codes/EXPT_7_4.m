clc;
clear all;
close all;
I = imread('circles.png');
se = strel('disk',4);
im1 = imcomplement(imerode(I, se));
im2 = imdilate(imcomplement(I),se);
subplot(2,2,1);
imshow(im1);
title('(A ero B) complement')
subplot(2,2,2);
imshow(im2);
title('(A compliment dilation B)')
im3 = imcomplement(imdilate(I, se));
im4 = imerode(imcomplement(I),se);
subplot(2,2,3);
imshow(im3);
title('(A dil B) complement')
subplot(2,2,4);
imshow(im4);
title('(A compliment erosion B)')
%Assumption B = reflection of B.
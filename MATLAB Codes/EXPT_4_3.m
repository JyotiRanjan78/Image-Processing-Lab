clc; 
clear all; 
close all;

i = imread('cameraman.tif');
[m,n] = size(i);
j=i;
subplot(221); 
imshow(i); 
title("Original Image");

subplot(223); 
imhist(i);
title('input image Histogram');

for x= 1:m
    for y= 1:n
        if i(x,y) > 150
            j(x,y) = 255;
        end
        if i(x,y) < 100
            j(x,y) = 0;
        end
    end
end
subplot(222); 
imshow(j); 
title('output image');

subplot(224); 
imhist(j);
ylim([0 1000]);
xlim([0 255]);
ylim([0 1000]);
title('output image Histogram');
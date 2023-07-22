clc;
clear all;
close all;
ip = imread('pout.tif');

subplot(3,3,1);
imshow(ip);
title('input image');

subplot(3,3,2);
ip_hist = user_hist(ip);
title('input histogram');

subplot(3,3,3);
normalized_hist = norm_hist(ip);
title('input normalized histogram');

I1 = histeq(ip);
subplot(3,3,4);
imshow(uint8(I1));
title('output img using histeq');
subplot(3,3,5);
inbuilt_hist = user_hist(I1);
title('output histogram');
subplot(3,3,6);
norm_inbuilt_hist = norm_hist(I1);
title('output normalized histogram')

clc;
clear all;
close all;
ip_img = imread('cameraman.tif');
%% 3X3 mean filter
mean_filt = (1/9)*ones(3);
op_img = imfilter(ip_img, mean_filt, 'same');
subplot(3,2,1);
imshow(ip_img);
title('input mean filter');
subplot(3,2,2);
imshow(op_img);
title('output 3x3 mean filter');
%% 3x3 weighted mean
weight_filt = (1/16)*[1,2,1;2,4,2;1,2,1];
weight_op = imfilter(ip_img, weight_filt, 'same');
subplot(3,2,3);
imshow(weight_op);
title('output 3x3 weighted mean filter');
%% 5x5 mean
mean_5_filt = (1/25)*ones(5);
op_img_5 = imfilter(ip_img, mean_5_filt, 'same');
subplot(3,2,4);
imshow(op_img_5);
title('output 5x5 mean filter');
%% 5x5 Bartlett mean
bartlett = (1/81)*[1,2,3,2,1;2,4,6,4,2;3,6,9,6,3;2,4,6,4,2;1,2,3,2,1];
op_img_bartlett = imfilter(ip_img, bartlett, 'same');
subplot(3,2,5);
imshow(op_img_bartlett);
title('output 5x5 bartlett filter');
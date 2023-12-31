clc;
clear all;
close all;
ip = imread('cameraman.tif');
subplot(2,2,1);
imshow(ip);
title('input image');
H = fspecial('unsharp');
unsharp_img = imfilter(ip,H,'replicate');
subplot(2,2,2);
imshow(unsharp_img);
title('unsharp inbuilt');
blur_filt = fspecial('motion',10);
blurred = imfilter(ip,blur_filt,'replicate');
mask = ip - blurred;
subplot(2,2,3);
imshow(mask);
title('Mask');
final = ip + mask;
subplot(2,2,4);
imshow(final);
title('User defined unsharp contrast enhancement');
clc
close all
clear all

img1=imread('cameraman.tif');
subplot(221);
imshow(img1);
title('IMAGE 1')

img2=imread('pout.tif');
subplot(222);
imshow(img2);
title('IMAGE 2')

[r1, c1] = size(img1);
[r2, c2] = size(img2);
rows = max(r1,r2);
cols = max(c1,c2);
img1fft=fft2(img1, rows, cols);
img2fft=fft2(img2, rows, cols);
mag1 = abs(img1fft);
mag2 = abs(img2fft);
pha1 = angle(img1fft);
pha2 = angle(img2fft);
out1 = mag1 .* exp(1i*pha2);
out2 = mag2 .* exp(1i*pha1);

out1 = (ifft2(out1));
subplot(2,2,3);
imshow(out1,[]);
title('IMAGE 1 WITH PHASE 2')

out2 = (ifft2(out2));
subplot(2,2,4);
imshow(out2,[]);
title('IMAGE 2 WITH PHASE 1')
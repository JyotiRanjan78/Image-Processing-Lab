% expt 1(d): WAP to perform RGB to gray scale and then to binary image. Use Subplot,
% display colour image, grayscale image, binary image in one figure
jrb = imread('magic.jpg');
subplot(2,2,1);
title('original');
imshow(jrb)
rgb1 = rgb2gray(jrb);
subplot(2,2,2);
title('grayscale');
imshow(rgb1)

% p=impixel(jrb);
% if (p>128):
%     jrb=1;
% else :
%     jrb=0;
BW = im2bw(jrb,0.4);
subplot(2,2,3);
title('binary image');
imshow(BW)
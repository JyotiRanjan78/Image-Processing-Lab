clc;
clear all;
close all;
ip_img = imread('cameraman.tif');
subplot(3,1,1);
imshow(ip_img);
title('input image');
op_img = medfilt2(ip_img);
subplot(3,1,2);
imshow(op_img);
title('output image using in-built median filter');
A = ip_img;
[m, n] = size(ip_img);
Med = [];
%Modified filter
for i=2:m-1
    for j=2:n-1
        Med(1) = A(i-1,j-1);
        Med(2) = A(i-1,j) ;
        Med(3) = A(i-1,j+1);
        Med(4) = A(i,j-1);
        Med(5) = A(i,j+1);
        Med(6) = A(i+1, j-1);
        Med(7) = A(i+1,j);
        Med(8) = A(i+1,j+1);
        A(i,j) = median(Med);
    end
end
subplot(3,1,3);
imshow(A);
title('using user defined median filter');
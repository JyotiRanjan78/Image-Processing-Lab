clc;
close all;
clear all;
I1=imread('circles.png');
se1= strel('disk',11,4);
I2=imcomplement(I1);
se2=reflect(se1);
Ioc1 = imopen(I2,se2);
Icc1 = imcomplement(imclose(I1,se1));
Ioc2 = imclose(I2,se2);
Icc2 = imcomplement(imopen(I1,se1));
figure
subplot(3,2,1)
imshow(I1);
title('Original Image ');
subplot(3,2,3)
imshow(Icc1);
title('Complement of Closing of Image');
subplot(3,2,4)
imshow(Ioc1);
title('Opening of Complement of Image');
subplot(3,2,5)
imshow(Icc2);
title('Complement of Opening of Image');
subplot(3,2,6)
imshow(Ioc2);
title('Closing of Complement of Image');
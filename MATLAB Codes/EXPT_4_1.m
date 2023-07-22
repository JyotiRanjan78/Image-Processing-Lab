clc
clear all
close all
a = imread('moon.tif');
a = im2double(a);
b = imcomplement(a);
subplot(3, 2, 1)
imshow(a)
title('Original Image')
subplot(3, 2, 2)
imshow(b)
title('Complement Image')

c = 50;
p = a + 1;
x = c * log(p);
subplot(3, 2, 3)
imshow(a)
title('Original Image')
subplot(3, 2, 4)
imshow(x)
title('Logarithmic transformation Image')

gamma = 1.2;
z = (c * a).^gamma;
subplot(3, 2, 5)
imshow(a)
title('Original Image')
subplot(3, 2, 6)
imshow(z)
title('Power law transformation Image')
clc
close all
clear all

white=ones(80,80);
a=padarray(white,[88,88]);
subplot(221);
imshow(a);
title('ORIGINAL IMAGE');

b=imrotate(a,45,'bilinear','crop');
subplot(222);
imshow(b);
title('45 DEGREE ROTATED IMAGE');

a1=abs(fftshift(fft2(a)));
subplot(223);
imshow(a1);
title('ORIGINAL IMAGE SPECTRUM');

b1=abs(fftshift(fft2(b)));
subplot(224);
imshow(b1);
title('ROTATED SPECTRUM');
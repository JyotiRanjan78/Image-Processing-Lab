clc
close all
clear all

black=zeros(80,80);
A=padarray(black,[88,88],1);
subplot(321);
imshow(A);
title('IMAGE 1');

white=ones(50,50);
B=padarray(white,[103,103]);
subplot(322);
imshow(B);
title('IMAGE 2');

A1=fft2(A,256,256);
subplot(325);
imshow(A1);
title('FFT IMAGE 1');

B1=fft2(B,256,256);
subplot(326);
imshow(B1);
title('FFT IMAGE 2');

C1=A1.*B1;
C1=ifft2(C1);
C1=fftshift(C1);
subplot(324);
imshow(C1);
title('USING DFT');

C=conv2(A,B,'same');
subplot(323);imshow(C);title('CONVOLUTION');
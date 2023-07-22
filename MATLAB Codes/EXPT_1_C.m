% expt 1(c): WAP to subtract, add and scale the image.
% Task: (i) Read an image, Subtract 100 from it and display.
% (ii) Add 100 and display
% (iii) Multiply with 0.7 and display
% (iv) Use Subplot 2*2
jrb = imread('jyoti.jpg') ;
jrb1 = jrb-100 ;
jrb2 = jrb+100;
jrb3 = jrb*0.7;

subplot(2,2,1);
imshow(jrb) ;
title('original');
subplot(2,2,2);
imshow(jrb1) ;
title('subtraction');
subplot(2,2,3);
imshow(jrb2);
title('addition');
subplot(2,2,4);
imshow(jrb3);
title('scaling');
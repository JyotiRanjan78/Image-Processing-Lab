clc
clear all
close all
grayimg =imread('cameraman.tif');
figure();
subplot(3,2,1);
imshow(grayimg);
title('Original Image');
subplot(3,2,2);
imhist(grayimg);
title('Histogram');

a=100;
b=170;
[r,c] = size(grayimg);

clipimg=grayimg;
for i=1:r
    for j=1:c
        if (grayimg(i,j)<=a)
            clipimg(i,j)=0;
        elseif (grayimg(i,j)>=b)
            clipimg(i,j)= 0;
        else
            clipimg(i,j)= 255;
        end
    end
end

clipimg=uint8(clipimg);
subplot(3,2,3);
imshow(clipimg);
title('(4.4)');

subplot(3,2,4);
imhist(clipimg);
xlim([0 260]);
ylim([0 1000]);
title('Histogram');

a=100;
b=150;
[r,c] = size(grayimg);

clipimg=grayimg;
for i=1:r
    for j=1:c
        if (grayimg(i,j)<=b && grayimg(i,j)>=a)
            clipimg(i,j)=255;
        end
    end
end

clipimg=uint8(clipimg);
subplot(3,2,5);
imshow(clipimg);
title('(4.5)');
subplot(3,2,6);
imhist(clipimg);
xlim([0 260]);
ylim([0 1000]);
title('Histogram');
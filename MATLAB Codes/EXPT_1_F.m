% expt 1(f): (i) WAP to Flip the image. (ii) WAP to Mirror the image.
jrb = imread('iiit_logo.jpg');
subplot(2,2,1);
imshow(jrb)
title('ORIGINAL IMAGE')
subplot(2,2,2);
vertFlip_img = flip(jrb, 1);
imshow(vertFlip_img);
title('VERTICALLY FLIPPED IMAGE');
subplot(2,2,3);
mirror_img = flip(jrb,2);
imshow(mirror_img);
title('MIRRORED IMAGE')
% expt 1(e): WAP to reshuffle the RGB components to create new color images.
% Use Subplot (2*2), original image, GRB, BGR, BRG
sampleImage = imread('magic.jpg');
redCode = sampleImage(:, :, 1);
greenCode = sampleImage(:, :, 2);
blueCode = sampleImage(:, :, 3);

subplot(2,2,1)
imshow(sampleImage)
title('RGB IMAGE')
subplot(2,2,2)
brgSample = cat(3, blueCode,redCode, greenCode);
imshow(brgSample)
title('BRG IMAGE')
subplot(2,2,3)
grbSample = cat(3, greenCode,redCode, blueCode);
imshow(grbSample)
title('GRB IMAGE')
subplot(2,2,4)
bgrSample = cat(3, blueCode,greenCode,redCode);
imshow(bgrSample)
title('BGR IMAGE')
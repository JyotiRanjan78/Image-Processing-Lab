clc
clear all
close all
coin_img = imread('coins.png');
cameraman_img = imread('cameraman.tif');
pout_img = imread('pout.tif');

subplot(3,3,7);
imshow(coin_img);
title('coin img');

subplot(3,3,8);
imshow(cameraman_img);
title('cameraman img');

subplot(3,3,9);
imshow(pout_img);
title('pout img');

subplot(3,3,1);
imhist(coin_img);
title('coin histogram');

subplot(3,3,2);
imhist(cameraman_img);
title('cameraman histogram');

subplot(3,3,3);
imhist(pout_img);
title('pout histogram');

subplot(3,3,4);
histogram_coin = user_hist(coin_img);
title('user-defined coin histogram');

subplot(3,3,5);
histogram_cameraman = user_hist(cameraman_img);
title('user-defined cameraman histogram');

subplot(3,3,6);
histogram_pout = user_hist(pout_img);
title('user-defined pout histogram');
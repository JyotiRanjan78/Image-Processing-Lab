close all
clear
clc
img = imread('cameraman.tif');
subplot(2,3,1);
imshow(img, []);
title('Original Image');
n_img = imnoise(img,'salt & pepper');
subplot(2,3,2);
imshow(n_img, []);
title('Noisy Image');
%% Min, Max and Midpoint Filter
B = n_img;
C = n_img;
D = n_img;
for row=2:size(n_img,1)-1
    for col=2:size(n_img,2)-1
        S=[n_img(row-1,col-1),n_img(row-1,col),n_img(row-1,col+1),n_img(row,col-1),n_img(row,col),n_img(row,col+1),n_img(row+1,col-1),n_img(row+1,col),n_img(row+1,col+1)];
        S=sort(S);
        B(row,col)=S(1);
        C(row,col)=S(end);
        D(row,col)=(S(1)+S(end))/2;
    end
end
subplot(2,3,3);
imshow(B, []);
title('Min-Filter Image');
subplot(2,3,4);
imshow(C, []);
title('Max-Filter Image');
subplot(2,3,5);
imshow(D, []);
title('Mid-point Filter Image');
% clc;
% clear;
% close all;
% 
% A = imread('rice.png');
% subplot(1,5,1); 
% imshow(A);
% title("Original");
% 
% noise_img = imnoise(A, 'salt & pepper', 0.1);
% subplot(1, 5, 2);
% imshow(noise_img);
% title("After adding noise");
% 
% minfn = @(x)min(x(:));
% maxfn = @(x)max(x(:));
% midfn = @(x)((min(x(:))+max(x(:)))/2);
% min_im = nlfilter(noise_img, [2,2], minfn);
% subplot(1, 5, 3);
% imshow(min_im);
% title("After min filter");
% 
% max_im = nlfilter(noise_img, [2,2], maxfn);
% subplot(1, 5, 4);
% imshow(max_im);
% title("After max filter");
% 
% mid_im = nlfilter(noise_img, [2,2], midfn);
% subplot(1, 5, 5);
% imshow(mid_im);
% title("After mid-point filter");
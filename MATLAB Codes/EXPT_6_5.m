A = im2double(imread('cameraman.tif'));
subplot(2,2,1);
imshow(A);
title('Input Image');

DCT_A = dct2(A);
subplot(2,2,2);
imshow(DCT_A);
title("DCT of Image");

new_A1 = DCT_A;
new_A2 = DCT_A;
new_A3 = DCT_A;
for i = 1:size(A,1)
    for j = 1:size(A,2)
        if(i > 150 || j > 150)
            new_A1(i,j) = 0;
        end
    end
end

for i = 1:size(A,1)
    for j = 1:size(A,2)
        if(i > 80 || j > 80)
            new_A2(i,j) = 0;
        end
    end
end

for i = 1:size(A,1)
    for j = 1:size(A,2)
        if(i > 100 || j > 100)
            new_A3(i,j) = 0;
        end
    end
end

subplot(2,2,3);
imshow(idct(dct(A)));
title("IDCT of Image");

figure(2);
subplot(2,2,1);
imshow(idct2((new_A1)));
title("Cropped IDCT (to 150*150)");

subplot(2,2,2);
imshow(idct2((new_A2)));
title("Cropped IDCT2 (to 80*80)");

subplot(2,2,3);
imshow(idct2((new_A3)));
title("Cropped IDCT3 (to 100*100)");
% clc;
% clear all;
% close all;
% img = im2double(imread('cameraman.tif'));
% dctimg = dct2(img);
% subplot(2,2,1);
% imshow(img);
% title('input');
% subplot(2,2,2);
% imshow(dctimg);
% title('applying DCT');
% reimg = idct2(dctimg);
% subplot(2,2,3);
% imshow(reimg);
% title('IDCT recovered image');
% temp = dctimg;
% [r, c] = size(img);
% 
% for i = 1:r
%     for j = 1:c
%         if i> 100 || j>100
%             temp(i,j) = 0;
%         end
%     end
% end
% 
% subplot(2,2,4);
% imshow(idct2(temp));
% title('idct cropped image');
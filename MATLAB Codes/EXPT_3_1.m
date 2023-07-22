clc
close all
clear all
jrb=imread('cameraman.tif');
subplot(331)
imshow(jrb);
title('original image');

level = multithresh(jrb);
seg_jrb = imquantize(jrb,level);
subplot(332)
imshow(seg_jrb,[])
title('Image with 1-level quantization');


level = multithresh(jrb,3);
seg_jrb = imquantize(jrb,level);
subplot(333)
imshow(seg_jrb,[])
title('Image with 3-level quantization');

level = multithresh(jrb,5);
seg_jrb = imquantize(jrb,level);
subplot(334)
imshow(seg_jrb,[])
title('Image with 5-level quantization');

level = multithresh(jrb,7);
seg_jrb = imquantize(jrb,level);
subplot(335)
imshow(seg_jrb,[])
title('Image with 7-level quantization');


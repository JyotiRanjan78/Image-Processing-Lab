% expt 1(g): WAP to partition the image in 4 equal parts. Use subplot to display the 
% 4 parts in a single figure window.
jrb = imread('B218018.jpg');

jrb1=jrb(1:size(jrb,1)/2,1:size(jrb,2)/2,:);
jrb2=jrb(size(jrb,1)/2+1:size(jrb,1),1:size(jrb,2)/2,:);
jrb3=jrb(1:size(jrb,1)/2,size(jrb,2)/2+1:size(jrb,2),:);
jrb4=jrb(size(jrb,1)/2+1:size(jrb,1),size(jrb,2)/2+1:size(jrb,2),:);

subplot(2,2,1);
imshow(jrb1);
subplot(2,2,2);
imshow(jrb3);
subplot(2,2,3);
imshow(jrb2);
subplot(2,2,4);
imshow(jrb4);
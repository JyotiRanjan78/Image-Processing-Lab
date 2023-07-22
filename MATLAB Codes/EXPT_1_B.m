%expt 1(b): WAP to read, display and save an image with a 'user defined name'.
%Task: Read an image, Display it, Save the image in a new name”B218018.jpg’
jrb = imread('jyoti.jpg');
figure,imshow(jrb);
imwrite(jrb,'B218018.jpg');
new_jrb = imread('B218018.jpg');
figure, imshow(new_jrb)
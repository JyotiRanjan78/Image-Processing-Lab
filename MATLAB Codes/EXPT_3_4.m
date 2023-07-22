clc
close all
clear all
jrb = imread('cameraman.tif');
figure, imshow(jrb) 
title('original image');

%% BILINEAR INTERPOLATION METHOD USING CONVOLUTION METHOD
z=zeros(2*size(jrb,1),2*size(jrb,2));
for r=1:size(jrb,1)
    for c=1:size(jrb,2)
        z(2*r-1,2*c-1)=jrb(r,c);
    end
end
h=[0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
new=conv2(z,h);
figure, imshow(new,[])
title('scaled image using convolution method');

%% BILINEAR INTERPOLATION METHOD USING MATHEMATICAL METHOD

z=zeros(2*size(jrb,1),2*size(jrb,2));
% LINEAR INTERPOLATION ALONG ROWS
for r=1:size(jrb,1)
    for c=1:size(jrb,2)
        z(r,2*c)=jrb(r,c);
        if (c+1<size(jrb,2))
            z(r,2*c+1)=0.5*(jrb(r,c)+jrb(r,c+1));
        else
            z(r,2*c+1)=jrb(r,c);
        end
    end
end
% LINEAR INTERPOLATION ALONG COLUMNS
z2=z;
for r=1:size(jrb,1)
    for c=1:2*size(jrb,2)
        z2(2*r,c)=z(r,c);
        if (r+1<size(jrb,1))
            z2(2*r+1,c)=0.5*(z(r,c)+z(r+1,c));
        else
            z2(2*r+1,c)=z(r,c);
        end
    end
end
figure, imshow(z2,[])
title("scaled image using mathematical method");

            
clc
close all
clear all
jrb = imread('cameraman.tif');
figure, imshow(jrb) 
title('original image');

%% REPLICATION METHOD USING CONVOLUTION METHOD
z=zeros(2*size(jrb,1),2*size(jrb,2));
for r=1:size(jrb,1)
    for c=1:size(jrb,2)
        z(2*r-1,2*c-1)=jrb(r,c);
    end
end
h=ones(2,2);
new=conv2(z,h);
figure, imshow(new,[])
title('scaled image using convolution method');
        
%% REPLICATION METHOD USING MATHEMATICAL METHOD
z2=zeros(2*size(jrb,1),2*size(jrb,2));
for r=1:size(jrb,1)
    for c=1:size(jrb,2)
        z2(2*r-1,2*c-1)=jrb(r,c);
        z2(2*r,2*c-1)=jrb(r,c);
        z2(2*r-1,2*c)=jrb(r,c);
        z2(2*r,2*c)=jrb(r,c);
    end
end
figure, imshow(z2,[])
title("scaled image using mathematical method");
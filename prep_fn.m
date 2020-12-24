

function [scanned_image] = Lab2_prep_fn(scanned_image)

if (size(scanned_image,3) == 3) % If Image Is Coloured Then Convert To Grayscale 
    scanned_image = rgb2gray(scanned_image);
end
subplot(1,4,1);imshow(scanned_image);title('Grayscale image');
% filter_mask = fspecial('average');
% scanned_image = imfilter(scanned_image,filter_mask,'replicate');
% subplot(1,4,2);imshow(scanned_image);title('Low pass filtered image');
scanned_image = im2bw(scanned_image,0.85);
subplot(1,4,3);imshow(scanned_image1);title('Binarized image');
level = graythresh(scanned_image);
BW = im2bw(scanned_image,level);
subplot(1,4,4);imshow(BW);title('Binarized image using Otsu Method');



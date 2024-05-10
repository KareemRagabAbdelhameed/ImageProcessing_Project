function gray=convert2gray(rgb)
%Luminance
%[r,c,ch]=size(old);
%newgray=(old(:,:,1)+old(:,:,2)+old(:,:,3))/3;
gray=(.3*rgb(:,:,1)+0.59*rgb(:,:,2)+0.11*rgb(:,:,3))/3;
gray=uint8(gray);
%figure,subplot(1,2,1),imshow(old),title('original');
%subplot(1,2,2),imshow(newgray),title('After convert');


end
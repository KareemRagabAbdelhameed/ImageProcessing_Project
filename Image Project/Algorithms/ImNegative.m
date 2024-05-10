function Image=ImNegative(Image)
figure;
subplot(1,2,1),imshow(Image),title('original');
[r,c,ch]=size(Image);
for k=1:ch
    for i=1:r
        for j=1:c
         Image(i,j,k)=255-Image(i,j,k);   
        end
    end
end
Image=uint8(Image);



subplot(1,2,2),imshow(Image),title('New');






end
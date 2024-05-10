function newImage=Quantization(oldImage,k)
[r,c,ch]=size(oldImage);
newImage=zeros(r,c,ch);
grayLevel=power(2,k);
gap=256/grayLevel;
colors=gap:gap:256;
temp=0;
for k=1:ch
    for i=1:r
        for j=1:c
            temp=oldImage(i,j,k)/gap;
            index=floor(temp);
            if(index==0) index=1;end
            newImage(i,j,k)=colors(index);
        end
    end
end

newImage=uint8(newImage);

figure,subplot(1,2,1);imshow(oldImage),title('old');
subplot(1,2,2); imshow(newImage),title('new');



end
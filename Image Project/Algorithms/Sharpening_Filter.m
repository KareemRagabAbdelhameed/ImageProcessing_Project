function image=Sharpening_Filter(pic)

figure,subplot(1,2,1);imshow(pic),title('original image')
pic=rgb2gray(pic);
mask=[0,-1,0;-1,5,-1;0,-1,0];
mask_size=3;
image=zeros(size(pic));
bor=floor(mask_size/2);
border=padarray(pic,[bor bor],'replicate','both');
[row,col,n]=size(border);
maskRow=0;
maskCol=0;
sum=0;
average=0;
for k=1:n
newrow=0;
    for i=2:row
        newrow=newrow+1;
        newcol=0;
        for j=2:col
            newcol=newcol+1;
            for f1=i-bor:2+newrow
                maskRow=maskRow+1;
                maskCol=0;
                for f2=j-bor:2+newcol
                    maskCol=maskCol+1;
                    sum=sum+(border(i,j)*mask(maskRow,maskCol));
                end
            end    
            total=sum/9;
            average=round(total);
            image(newrow,newcol)=sum;
            maskRow=0;
            maskCol=0;
            sum=0;
        end
    end
end
image=uint8(image);
new_image=imadjust(image,[0,1]);
new_image=uint8(new_image);
[r,c,n]=size(new_image);
for k=1:n
    for row=1:r
        for col=1:c
            if new_image(row,col,k)==255
                new_image(row,col,k)=0;
            elseif new_image(row,col,k)==0
                   new_image(row,col,k)=255;
            end
        end
    end
end
new_image = uint8(new_image);
subplot(1,2,2);imshow(image),title('filtered image')
end

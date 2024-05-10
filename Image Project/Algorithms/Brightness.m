function x=Brightness(img,offset)%offset is positive or Negative
[row,col,ch]=size(img);
for k=1:ch
    for r=1:row
        for c=1:col
           newVal=img(r,c,k)+offset;
           if(newVal>255 )
               newVal=255;
           else if(newVal<0 )
               newVal=0;
               end
           end
           x(r,c,k)=newVal;
        end
    end
end

x=uint8(x)


figure;
subplot(1,2,1),imshow(img),title('Original');
subplot(1,2,2),imshow(x),title('new');
end
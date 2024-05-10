function newImage=HisEqual(old_img)

%%%%%%%%%%%%%%%%%%%5
[r,c]=size(old_img);
y=zeros(1,256);
for i=1:r
    for j=1:c
        z=old_img(i,j);
       y(z+1)=y(z+1)+1;
    end
end




counts = y;
sum=0;
totalMatrix=zeros(3,256);
[r,c,ch]=size(old_img);
newImage=zeros(r,c);
for count=1:256
    sum=sum+counts(count);
    totalMatrix(1,count)=counts(count);
    if(count==1)
       totalMatrix(2,count)=counts(count);
    else
        totalMatrix(2,count)=sum;
    end
end
for k=1:256
   totalMatrix(3,k)=(totalMatrix(2,k)/sum)*255; 
    
end
oldvalue=0;
for k=1:ch
    for i=1:r
        for j=1:c
           oldvalue=old_img(i,j);
           if(oldvalue==0) oldvalue=1;end
           newImage(i,j,k)=totalMatrix(3,oldvalue);
        end
    end
end
newImage=uint8(newImage);

figure;subplot(121), imshow(old_img),title('old');
subplot(122), imshow(newImage),title('new');
end
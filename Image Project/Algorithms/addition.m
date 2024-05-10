function newImage=addition(Image1,Image2)
newImage=size(Image1);
[r1,c1,ch1]=size(Image1);
[r2,c2,ch2]=size(Image2);
if(r1~=r2 || c1~=c2 )
  Image1=imresize(Image1,[r2,c2]);  
end
[r1,c1,ch1]=size(Image1);
[r2,c2,ch2]=size(Image2);
if(size(Image1)==size(Image2))
    
 for k=1:ch1
    for i=1:r1
        for j=1:c1
         newImage(i,j,k)=Image1(i,j,k)+Image2(i,j,k);   
        end
    end
 end 
 newImage=uint8(newImage);
constrast(newImage,0,255);
end
figure;
subplot(2,2,1),imshow(Image1),title('Image 1');
subplot(2,2,2),imshow(Image2),title('Image 2');
subplot(2,1,2),imshow(newImage),title('Total');
end
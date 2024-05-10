function x=Weighted_Filter(img,segma)
figure;
subplot(1,2,1); imshow(img);title('Original');
x=zeros(size(img));
%n=floor(3.7*segma-.5);
%mask=fspecial('gaussian',masksize,segma);
[mask,masksize]=Guassian_function_2D(segma);
sof=size(mask,1);%sof=size of (filter or mask)
tempimg=padarray(img,[floor(sof./2),floor(sof./2)],'replicate','both');

for k=1:size(img,3)
    for i=1:size(img,1)
        for j=1:size(img,2)
            tmask=double(tempimg(i:i+sof-1,j:j+sof-1,k)).*mask;
            newvalue=sum(sum(tmask));
            x(i,j,k)=newvalue;
        end
    end
end
x=uint8(x);

subplot(1,2,2);imshow(x),title('new Image');
end

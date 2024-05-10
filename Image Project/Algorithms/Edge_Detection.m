function x= Edge_Detection(img)
figure;
subplot(1,2,1); imshow(img);title('Old');
mask=[0,1,0;1,-4,1;0,1,0];
img=img(:,:,1);
x=zeros(size(img));
tempimg=padarray(img,[1 1],'replicate','both');


    for i =1:size(img,1)
        for j=1:size(img,2)
            tmask=mask.*double(tempimg(i:i+2,j:j+2));
            newvalue=sum(sum(tmask));
            x(i,j)=newvalue;
        end
    end


x=constrast(x,0,1);
x=boolean(x);
x=1-x;
subplot(1,2,2);imshow(x),title('new');
end



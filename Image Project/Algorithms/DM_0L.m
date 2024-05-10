function [New_im]=DM_0L(im,fact)
[r, c, ch]=size(im);
New_r = r*fact;
New_c = c*fact;
New_im = zeros(New_r,New_c, ch);
for k=1:ch          %chain
    for i=1:r         %number of row
        for j=1:c       %number of col
            New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= im(i,j,k);
        end
    end
end
New_im = uint8(New_im);  %casting very importan ( without it will be double not int )
figure,imshow(im),title('Original') %used to show image and rename the figure
figure,imshow(New_im),title('Resized')

end
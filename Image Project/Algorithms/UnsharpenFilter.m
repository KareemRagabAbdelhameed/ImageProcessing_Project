function x=UnsharpenFilter(img)
figure;
subplot(1,2,1);imshow(img),title('Old');
x=weightedfilter(img,5);
x=img-x;
x=img+x;
subplot(1,2,2);imshow(x),title('New Unsharpen Filter');

end
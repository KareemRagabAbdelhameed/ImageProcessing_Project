function gray = cvt2grayAveraging(rgb)
%[r,c,ch]=size(rgb)

redImage = rgb(:, :, 1);
greenImage = rgb(:, :, 2);
blueImage = rgb(:, :, 3);

gray = round((redImage + greenImage + blueImage) / 3);
gray=uint8(gray);
function gray = cvt2graySingleColorChanel(rgb)
%[r,c,ch]=size(rgb)

redImage = rgb(:, :, 1);
greenImage = rgb(:, :, 2);
blueImage = rgb(:, :, 3);

gray = redImage;
gray=uint8(gray);
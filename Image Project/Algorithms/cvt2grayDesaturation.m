function gray = cvt2grayDesaturation(rgb)
%[r,c,ch]=size(rgb)

redImage = rgb(:, :, 1);
greenImage = rgb(:, :, 2);
blueImage = rgb(:, :, 3);

gray = round((max(rgb, [], 3) + min(rgb, [], 3)) / 2);
gray=uint8(gray);
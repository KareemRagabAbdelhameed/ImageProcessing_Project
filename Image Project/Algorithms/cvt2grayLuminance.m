function gray = cvt2grayLuminance(rgb)
%[r,c,ch]=size(rgb)

redImage = rgb(:, :, 1);
greenImage = rgb(:, :, 2);
blueImage = rgb(:, :, 3);

gray = round((0.3 * redImage + 0.59 * greenImage + 0.11 * blueImage));
gray=uint8(gray);
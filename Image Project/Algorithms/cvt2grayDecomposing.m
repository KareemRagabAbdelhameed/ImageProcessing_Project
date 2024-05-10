function gray = cvt2grayDecomposing(rgb)
%[r,c,ch]=size(rgb)

redImage = rgb(:, :, 1);
greenImage = rgb(:, :, 2);
blueImage = rgb(:, :, 3);

gray = max(rgb, [], 3); % Decompose using maximum
gray=uint8(gray);
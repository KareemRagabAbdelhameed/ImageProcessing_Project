function medianImage = applyMedianFilter(image, filterSize)
    % Create the output image
    medianImage = zeros(size(image));

    % Pad the image
    padding = floor(filterSize / 2);
    paddedImage = padarray(image, [padding, padding], 'replicate', 'both');

    % Apply the median filter
    for k = 1:size(image, 3)
        for i = 1:size(image, 1)
            for j = 1:size(image, 2)
                % Extract the neighborhood around the current pixel
                neighborhood = paddedImage(i:i+filterSize-1, j:j+filterSize-1, k);

                % Calculate the median of the neighborhood
                medianVal = median(neighborhood(:));

                % Assign the median to the corresponding pixel in the output image
                medianImage(i, j, k) = medianVal;
            end
        end
    end

    % Display the original and median filtered images
    figure;
    subplot(1,2,1);
    imshow(image);
    title('Original Image');
    subplot(1,2,2);
    imshow(medianImage);
    title('Image after Median Filter');
end

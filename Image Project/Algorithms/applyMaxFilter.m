function maxImage = applyMaxFilter(image, filterSize)
    % Pad the image
    padding = floor(filterSize / 2);
    paddedImage = padarray(image, [padding, padding], 0, 'both');
    
    % Get the size of the input image
    [rows, cols] = size(image);
    
    % Initialize the output image
    maxImage = zeros(rows, cols);
    
    % Apply the max filter
    for i = 1:rows
        for j = 1:cols
            % Extract the neighborhood around the current pixel
            neighborhood = paddedImage(i:i+filterSize-1, j:j+filterSize-1);
            
            % Calculate the maximum value in the neighborhood
            maxVal = max(neighborhood(:));
            
            % Assign the maximum value to the corresponding pixel in the output image
            maxImage(i, j) = maxVal;
        end
    end
    
    % Display the original and max filtered images
    figure;
    subplot(1,2,1);
    imshow(image);
    title('Original Image');
    subplot(1,2,2);
    imshow(maxImage);
    title('Image after Max Filter');
end

function minImage = applyMinFilter(image, filterSize)
    % Pad the image
    padding = floor(filterSize / 2);
    paddedImage = padarray(image, [padding, padding], 0, 'both');
    
    % Get the size of the input image
    [rows, cols] = size(image);
    
    % Initialize the output image
    minImage = zeros(rows, cols);
    
    % Apply the min filter
    for i = 1:rows
        for j = 1:cols
            % Extract the neighborhood around the current pixel
            neighborhood = paddedImage(i:i+filterSize-1, j:j+filterSize-1);
            
            % Calculate the minimum value in the neighborhood
            minVal = min(neighborhood(:));
            
            % Assign the minimum value to the corresponding pixel in the output image
            minImage(i, j) = minVal;
        end
    end
    
    % Display the original and min filtered images
    figure;
    subplot(1,2,1);
    imshow(image);
    title('Original Image');
    subplot(1,2,2);
    imshow(minImage);
    title('Image after Min Filter');
end

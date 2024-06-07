% Read the image
img = imread('DFT.tif'); % Make sure 'image_a.png' is your input image file name
img = double(img); % Convert to double for precision

% Apply the logarithmic transformation
c = 1;
log_transformed_img = c * log(1 + img);

% Scale the intensity range to [0, 255]
min_val = min(log_transformed_img(:));
max_val = max(log_transformed_img(:));
scaled_img = 255 * (log_transformed_img - min_val) / (max_val - min_val);
scaled_img = uint8(scaled_img); % Convert to uint8 for display

% Display the original and the transformed images
figure;
subplot(1, 2, 1);
imshow(img, []);
title('Original Image');

subplot(1, 2, 2);
imshow(scaled_img, []);
title('Log-transformed Image');
imwrite(scaled_img,'result.png')

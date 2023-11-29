% Read an RGB image
originalImage = imread('peppers.png');

% Create a figure with subplots
figure;

% Display the original image
subplot(2, 2, 1);
imshow(originalImage);
title('Original RGB Image');

% Convert RGB to Grayscale
grayImage = rgb2gray(originalImage);

% Display the grayscale image
subplot(2, 2, 2);
imshow(grayImage);
title('Grayscale Image');

% Convert RGB to HSV
hsvImage = rgb2hsv(originalImage);

% Display the HSV image
subplot(2, 2, 3);
imshow(hsvImage);
title('HSV Image');

% Convert RGB to Lab
labImage = rgb2lab(originalImage);

% Display the Lab image
subplot(2, 2, 4);
imshow(labImage);
title('Lab Image');

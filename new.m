% Create a Sobel filter for horizontal edge detection
sobel_filter_horizontal = fspecial('sobel');

% Create a Sobel filter for vertical edge detection (transpose of horizontal)
sobel_filter_vertical = sobel_filter_horizontal';

% Read the image
original_image = imread('cameraman.tif'); 

% Convert the image to grayscale if it's in color
if size(original_image, 3) == 3
    gray_image = rgb2gray(original_image);
else
    gray_image = original_image;
end

% Apply the Sobel filter to the image to detect edges in horizontal and vertical directions
edges_horizontal = imfilter(double(gray_image), sobel_filter_horizontal);
edges_vertical = imfilter(double(gray_image), sobel_filter_vertical);

% Combine the horizontal and vertical edge images to get the magnitude
edge_magnitude = sqrt(edges_horizontal.^2 + edges_vertical.^2);

% Display the original image and the edge-detected image
subplot(1, 2, 1);
imshow(uint8(gray_image));
title('Original Image');

subplot(1, 2, 2);
imshow(uint8(edge_magnitude), []);
title('Edge-Detected Image');

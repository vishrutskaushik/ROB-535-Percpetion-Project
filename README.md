# ROB-535-Percpetion-Project

# Pre-steps
Make sure to install TensorFlow and Pandas on your computer

# Image Processing Step

## If bounding boxes of each image is given
run `image_crop.m` in MatLab to crop images based on given bounding boxes

## If bounding boxes of each image is not given
use bounding_detection.ipynb to find the bounding boxes, and then run `image_crop.m`

# Image Classification Step
use ROB 535 Image Classification Project.ipynb to obtain and save the prediction from VGG, Inception, and Resnet model based on cropped images.

Then, use KaggleOutputGenerator.ipynb to generate results in desired format.

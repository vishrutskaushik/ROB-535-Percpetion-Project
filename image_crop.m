clc; clear all; close all;

train_data = readtable("train_labels.csv");
valid_data = readtable("valid_labels.csv");
test_data = readtable("test_labels.csv");
%{
for i = 1:size(train_data,1)
    path = sprintf('images/train/%s',char(train_data.filename(i)));
    img = imread(path);
    rec = [train_data.xmin(i) train_data.ymin(i)...
        train_data.xmax(i)-train_data.xmin(i) train_data.ymax(i)-train_data.ymin(i)];
    img_cropped = imcrop(img,rec);
    img_cropped = imresize(img_cropped, [300 300]);
    path = sprintf('cropped_images/train/%s',char(train_data.filename(i)));
    imwrite(img_cropped, path, "Quality", 100) 
end


for i = 1:size(valid_data,1)
    path = sprintf('images/test/%s',char(valid_data.filename(i)));
    img = imread(path);
    rec = [valid_data.xmin(i) valid_data.ymin(i)...
        valid_data.xmax(i)-valid_data.xmin(i) valid_data.ymax(i)-valid_data.ymin(i)];
    img_cropped = imcrop(img,rec);
    img_cropped = imresize(img_cropped, [300 300]);
    path = sprintf('cropped_images/test/%s',char(valid_data.filename(i)));
    imwrite(img_cropped, path, "Quality", 100) 
end
%}
for i = 1:size(test_data,1)
    path = sprintf('test_images/%s',char(test_data.filename(i)));
    img = imread(path);
    rec = [min(test_data.xmin(i),test_data.xmax(i)) min(test_data.ymin(i),test_data.ymax(i))...
        abs(test_data.xmax(i)-test_data.xmin(i)) abs(test_data.ymax(i)-test_data.ymin(i))];
    img_cropped = imcrop(img,rec);
    img_cropped = imresize(img_cropped, [300 300]);
    path = sprintf('cropped_test_images/%s',char(test_data.filename(i)));
    imwrite(img_cropped, path, "Quality", 100) 
end
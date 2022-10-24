clc
clear all
close all
fclose all
mycam = webcam(1);

while 1    
    image = snapshot(mycam);
    u=im2gray(image);
    coder.extrinsic('detectORBFeatures'); 
    points = detectORBFeatures(u);    
    %[features, valid_points] = extractFeatures(u, points);
    %imshow(image)
    %hold on
    %plot(points,'ShowScale',false)
    %plot(valid_points.selectStrongest(30),'showOrientation',true,'ShowScale',false);
    %hold off
    points=points.selectStrongest(200);
    RGB = insertMarker(image,points.Location,'size',10);
    imshow(RGB)


end
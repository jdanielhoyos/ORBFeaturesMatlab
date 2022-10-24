function y = Points(c)
global disparityswitch points3Dswitch ORBswitch
if ORBswitch==1
u=im2gray(c);
%points=ones(720,1280,3);
%points = struct('selectStrongest',zeros(100,1));

%coder.extrinsic('detectORBFeatures'); 
points = detectORBFeatures(u);        
    %[features, valid_points] = extractFeatures(u, points);
    %imshow(image)
    %hold on
    %plot(points,'ShowScale',false)
    %plot(valid_points.selectStrongest(30),'showOrientation',true,'ShowScale',false);
    %hold off

    points=points.selectStrongest(10000);    
    
    RGB = insertMarker(c,points.Location,'size',3,'marker','x');


y = RGB;
else
    y=uint8(ones(720,1280,3));
end

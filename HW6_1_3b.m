data = load('MRI_brain_14slices.mat');
pic = data.MRI_brain(1:880, 1:640, 1:14);%chooose the 11th picture
%pic2 = reshape(pic,[], 200);
pic2 = reshape(pic,200,[]);
histogram(pic2);
xlim([0,2700]);
title('intensity histogram of 14 images');
xlabel('image intensity');
ylabel('frequency (pixel count)');
data = load('MRI_brain_14slices.mat');
whos('-file','MRI_brain_14slices.mat')
pic = data.MRI_brain(1:880, 1:640, 11);%chooose the 11th picture
imagesc(pic);
colormap('gray');
set(gca,'dataaspectratio',[1 1 1]);
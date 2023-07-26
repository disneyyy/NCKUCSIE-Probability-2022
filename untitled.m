%A = [1,-50;1,-75;1,-100;1,-125;1,-150;1,-175;1,-200];
%B=[10.7;9;7.7;6;4.8;3;1.7];
%X = inv(A'*A)*A'*B;
%X
data = load('MRI_brain_14slices.mat');
pic = data.MRI_brain(1:880, 1:640, 1:14);%chooose the 11th picture
%0~400, 400~555, 555~1025, 1025~1365
deci = [400, 555, 1025, 1365];
x = deci(1,1):deci(1,2);
u = mean(x);
o = sqrt(var(x));
y1 = normpdf(0:700,u,o);
figure
bar(y1);
%xlim([0,700])

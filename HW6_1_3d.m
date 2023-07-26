data = load('MRI_brain_14slices.mat');
pic = data.MRI_brain(1:880, 1:640, 1:14);%chooose the 11th picture
%0~400, 400~555, 555~1025, 1025~1365
deci = [400, 555, 1025, 1365];
x = deci(1,1):deci(1,2);
u = mean(x);
o = sqrt(var(x));
y1 = normpdf(0:3000,u,o);
figure
bar(0:3000,y1);
x = deci(1,2):deci(1,3);
u = mean(x);
o = sqrt(var(x));
y2 = normpdf(0:3000,u,o);
hold on
bar(0:3000,y2);
hold off
x = deci(1,3):deci(1,4);
u = mean(x);
o = sqrt(var(x));
y3 = normpdf(0:3000,u,o);
hold on
bar(0:3000,y3);
hold off
xlim([0,2700]);%3 Gaussian distributions
title('three approximated Gaussian distributions');
xlabel('image intensity');
ylabel('relative frequency');
y = 0:3000;
for i=1:3001
    y(1,i) = y1(1,i)+y2(1,i)+y3(1,i);
end
figure
bar(0:3000,y);
xlim([0,2700]);%combined distributions
title('three approximated Gaussian distributions');
title('combined distribution by adding three distributions');
xlabel('image intensity');
ylabel('relative frequency');
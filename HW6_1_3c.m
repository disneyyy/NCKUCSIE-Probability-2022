%0~265, 265~555, 555~1025, 1025~1365
data = load('MRI_brain_14slices.mat');
%whos('-file','MRI_brain_14slices.mat')
%backgd = 880:640:14;
deci = [400, 555, 1025, 1365];
grayma = 880:640:14;
whitema = 880:640:14;
CSF = 880:640:14;
pic = data.MRI_brain(1:880, 1:640, 1:14);%chooose the 11th picture
for i=1:14
    %for j=1:880 %background
    %    for k=1:640
    %        if(pic(j,k,i)>=0 && pic(j,k,i)<=340) 
    %            backgd(j,k,i) = 1;
    %        else 
    %            backgd(j,k,i) = 0;
    %        end
    %    end
    %end
    for j=1:880 %CSF
        for k=1:640
            if(pic(j,k,i)>deci(1,1) && pic(j,k,i)<=deci(1,2)) 
                CSF(j,k,i) = 1;
            else 
                CSF(j,k,i) = 0;
            end
        end
    end
    for j=1:880 %gray
        for k=1:640
            if(pic(j,k,i)>deci(1,2) && pic(j,k,i)<=deci(1,3)) 
                grayma(j,k,i) = 1;
            else 
                grayma(j,k,i) = 0;
            end
        end
    end
    for j=1:880 %white
        for k=1:640
            if(pic(j,k,i)>deci(1,3) && pic(j,k,i)<=deci(1,4)) 
                whitema(j,k,i) = 1;
            else 
                whitema(j,k,i) = 0;
            end
        end
    end
end
%figure
%imagesc(backgd(1:880, 1:640, 11));
%colormap('gray');
%set(gca,'dataaspectratio',[1 1 1]);
%colorbar;
%title('background');
figure
imagesc(grayma(1:880, 1:640, 11));
colormap('gray');
set(gca,'dataaspectratio',[1 1 1]);
colorbar;
title('graymatter');
figure
imagesc(CSF(1:880, 1:640, 11));
colormap('gray');
set(gca,'dataaspectratio',[1 1 1]);
colorbar;
title('CSF');
figure
imagesc(whitema(1:880, 1:640, 11));
colormap('gray');
set(gca,'dataaspectratio',[1 1 1]);
colorbar;
title('whitematter');
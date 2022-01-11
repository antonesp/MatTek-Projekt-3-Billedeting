
function pic = monochrome(fileName)
% af Anton, dato 11-01-2022


R = imread(fileName);

w = [0.299,0.587,0.144];

%Hvert lag i den 3 dimensionelle matrix ganges med en skalar fra w
greyR(:,:,1) = R(:,:,1).*w(1);
greyR(:,:,2) = R(:,:,2).*w(2);
greyR(:,:,3) = R(:,:,3).*w(3);

% De 3 lag summes.
greyTrue = greyR(:,:,1)+greyR(:,:,2)+greyR(:,:,3);

imshow(greyTrue)

pic = greyTrue;


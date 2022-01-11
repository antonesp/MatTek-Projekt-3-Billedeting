

function pic = ImageProcessor(fileName)

n = 0;
disp('Vælg hvad der skal ske med billedet');

disp(' ');
disp('1 : Koverter billedet til gråtone');
disp('2 : Konverter billedet til sepia');
disp('3 : Gør billedet mættet');
disp('4 : Blend to billeder');

while ~any(n == 1:4)
    n = input('Vælg en mulighed fra menuen: ');
end

if n == 1
    p = monochrome(fileName);

elseif n == 2
    p = sepia(fileName);  
elseif n == 3
    p = farvemaetning(fileName);
    
elseif n == 4
    fileName2 = input('Andgiv filenavnet på det andet billede ');
    bF = input('Andgive et blandingsforhold mellem 0:1 ');
    
    p = blend(fileName,fileName2,bF);
end 

navn = input('Hvad skal den nye fil hedde? ');

imwrite(p,navn,'jpg')
imsave

pic = imshow(p);
end
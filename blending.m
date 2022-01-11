function blend=blending(im1,im2,w)
%Blender to billeder sammen. w angiver dimensionen.
%Clara Hollenbeck og Anton Espholm. 11-1-2022.
W=readImage(im2);
R=readImage(im1);
[n,m]=size(R,[1,2]); %Definerer n og m for roses.jpg
wi=repmat(linspace(0,1,m),n,1);

%Ændrer størrelsen af W, så det er lige så stort som R. 
for i=1:3
Wn(:,:,i)=imresize(W(:,:,i),[n,m]);
end

Wn=im2double(Wn); %Sørger for at Wn er double

%Blender billederne sammen
if w==1 %For 1d.
    for i=1:3
        B(:,:,i)=0.5.*Wn(:,:,i)+0.5.*R(:,:,i);
    end
elseif w==2   %For 2d
for i=1:3
    B(:,:,i)=wi.*Wn(:,:,i)+(1-wi).*R(:,:,i);
end
else %Variabel kontrol
    disp('Fejl, w skal være 1 eller 2')
end
blend=B;
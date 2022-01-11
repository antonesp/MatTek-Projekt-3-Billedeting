function greyM = monokromB(filename)
%Funktionen laver et RGB billede om til et monokromt billede.
%Clara Hollenbeck 11-1-2022
R=imread(filename);
w=[0.299,0.587,0.144];%Farveskaleringsvektor

%Hver nxm matrix ganges med en skalar fra vektoren.
greyR=R(:,:,1)*w(1);
greyG=R(:,:,2)*w(2);
greyB=R(:,:,3)*w(3);

%Herefter lægges de sammen for at få det monokrome billede.
greyM=greyR+greyG+greyB;

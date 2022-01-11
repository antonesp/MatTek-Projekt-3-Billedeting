% Farvemætning
function fmR = farvemaetning(filename,f)
%Funktionen laver farvemætning af et billede. f angiver hvor mættet
%billedet skal være.
%Clara Hollenbeck 1-11-2022.
R=imread(filename);
gM=monokromB(filename); %Laver matrix for monokromt billede

%Der hvor andelen af rød, blå og grøn er ca. lige stor er værdien tæt på
%gM. Her bliver billedet desaturated. Hvor der er meget af en farve er
%forskellen stor, og farven bliver fremhævet på billedet.
fmR(:,:,1)= R(:,:,1)+f*(gM-R(:,:,1));
fmR(:,:,2)= R(:,:,2)+f*(gM-R(:,:,2));
fmR(:,:,3)= R(:,:,3)+f*(gM-R(:,:,3));




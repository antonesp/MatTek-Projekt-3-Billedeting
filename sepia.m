
function pic = sepia(billedeFil)
% Af Clara Hollenbeck, dato: 11-01-2022

R = imread(billedeFil);

M = [0.393,0.349,0.272;0.769,0.686,0.534;0.189,0.168,0.131];

% Hver pixel i R ganges med den tilsvarende søjle i M.

sepiaR(:,:,1) = R(:,:,1).*M(1,1)+R(:,:,2).*M(2,1)+R(:,:,3).*M(3,1);
sepiaR(:,:,2) = R(:,:,1).*M(1,2)+R(:,:,2).*M(2,2)+R(:,:,3).*M(3,2);
sepiaR(:,:,3) = R(:,:,1).*M(1,3)+R(:,:,2).*M(2,3)+R(:,:,3).*M(3,3);

pic = sepiaR;
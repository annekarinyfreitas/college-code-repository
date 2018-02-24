% Algoritmo que aplica um valor de gama a uma determinada imagem

img = imread('Lenna.png');
img = double(img);

% Valores maiores que 1 = imagem escura, menores que 1 = imagem clara
gamma = 2; 

%Divide todos os valores das 3 matrizes por 255
redScaled = img(:, :, 1)./255;
greenScaled = img(:, :, 2)./255;
blueScaled = img(:, :, 3)./255;

% Multiplica pelo gama
redGamma = redScaled.^gamma;
greenGamma = greenScaled.^gamma;
blueGamma = blueScaled.^gamma;

% Nova matriz multiplicada por 255
redTransformed =  redGamma.*255;
greenTransformed =  greenGamma.*255;
blueTransformed =  blueGamma.*255;

newImg = zeros(size(img),'uint8'); 

newImg(:,:,1) = uint8(redTransformed);
newImg(:,:,2) = uint8(greenTransformed);
newImg(:,:,3) = uint8(blueTransformed);

figure
imshow([img, newImg])





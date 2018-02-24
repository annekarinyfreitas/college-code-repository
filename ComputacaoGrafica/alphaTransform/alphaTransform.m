% Algoritmo que lê três imagens (alpha, background e foreground)
% A imagem alpha corta a foreground, aplica o background e transforma com o
% alpha

alpha_channel = imread('alpha_channel.png');
background = imread('background.jpg');
foreground = imread('foreground.png');

alpha = 0.5;


r_alpha_channel = alpha_channel(:,:,1);
g_alpha_channel = alpha_channel(:,:,2);
b_alpha_channel = alpha_channel(:,:,3);


b_alpha_channel = uint8(b_alpha_channel > 0);


foreground(:,:,1) = b_alpha_channel.*foreground(:,:,1);
foreground(:,:,2) = b_alpha_channel.*foreground(:,:,2);
foreground(:,:,3) = b_alpha_channel.*foreground(:,:,3);

a = double(b_alpha_channel).*alpha;

background = double(background);
foreground = double(foreground);
result = background;

result(:,:,1) = foreground(:,:,1).*a + background(:,:,1).*(1-a);
result(:,:,2) = foreground(:,:,2).*a + background(:,:,2).*(1-a);
result(:,:,3) = foreground(:,:,3).*a + background(:,:,3).*(1-a);

result = round(uint8(result));
imshow(result);


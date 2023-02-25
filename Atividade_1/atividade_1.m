pkg('load', 'image'); # Carregando a lib

# =====================================+
#               QUESTÃO 2              |
# =====================================+

# Exemplo 2.1 -> Ler e exibir imagens

f = imread('lena_gray_512.tif');

whos f

figure, imshow(f)

# =========================================
# Exemplo 2.2 -> Gravar imagem e usar imfinfo

imwrite(f, 'lena_gray_25.jpg', 'quality', 25)

imfinfo lena_gray_25.jpg

# =========================================
# Exemplo 2.3 -> Usar imwrite com parametros

% O EXEMPLO NÃO ESTÁ FUNCIONANDO POIS DA ESSE ERRO:
% error: imwrite: invalid PARAMETER 'resolution'
% imwrite(f, 'sf.tif', 'compression', 'none', 'resolution', [300 300])

# =========================================
# Exemplo 2.4 -> Conveção entre classes de imagens

f = [1 2; 3 4]
f
g = mat2gray(f)
g
gb = im2bw(g, 0.6)
gb
gb = f > 2
gbd = im2double(gb)

# =========================================
# Exemplo 2.5 -> Uma simples operação de imagens utilizando indexação de array
f = imread('lena_gray_512.tif');

fp = f(end:-1:1, :);
figure, imshow(fp)

# =========================================
# Exemplo 2.6 -> Ilustração dos operadores aritimeticos e as funções max e min
f = [ 1  2; 3 4 ]
g = [ 1 2; 2 1 ]

[w, wmax ,  wmin] = imblend(f, g)
w
wmax
wmin

# =========================================
# Exemplo 2.7 -> Operadores relacionais

# +----------+-------------------------+
# | operador | Descrição               |
# +----------+-------------------------+
# |     <    | Menor que               |
# +----------+-------------------------+
# |     <=   | Menor que ou igual a    |
# +----------+-------------------------+
# |     >    | Maior que               |
# +----------+-------------------------+
# |     >=   | Maior que ou igual a    |
# +----------+-------------------------+
# |     ==   | Igual a                 |
# +----------+-------------------------+
# |     -=   | Não é igual a           |
# +------------------------------------+

A = [1 2 3; 4 5 6; 7 8 9]
B = [0 2 4; 3 5 6; 3 4 9]

A == B
A >= B

# =========================================
# Exemplo 2.8 -> Operadores lógicos

# +----------+---------------+
# | operador | Descrição     |
# +----------+---------------+
# |     &    | Operador AND  |
# +----------+---------------+
# |     |    | Operador OR   |
# +----------+---------------+
# |    -     | Operador NOT  |
# +----------+---------------+
# |    &&    | Escalar AND   |
# +----------+---------------+
# |    ||    | Escalar OR    |
# +--------------------------+
A = [1 2 0; 0 4 5];
B = [1 -2 3; 0 1 1];
A & B

# =========================================
# Exemplo 2.9 -> Funções lógicas

# +----------+-------------------------------+
# | operador | Descrição                     |
# +----------+-------------------------------+
# |          |  A função xor retorna 1       |
# |    xor   |  apenas se os dois operadores |
# |          |  são logicamente diferentes   |
# +----------+-------------------------------+
# |          |  A função all retorna 1 se    |
# |    all   |  todos os elementos do vetor  |
# |          |  forem diferentes de zero     |
# +----------+-------------------------------+
# |          |  A função any retorna 1       |
# |     any  |  se qualquer elemento do vetor|
# |          |  for diferente de zero        |
# +----------+-------------------------------+
A = [1 2 3; 4 5 6]
B = [0 -1 1; 0 0 2]

xor(A, B)

all(A)

any(B)

# =========================================
# Exemplo 2.10 -> Ramificação condicional

% Aqui ele faz a função average()

% numel(A) <---- pegar o numero de elementos num array

# =========================================
# Exemplo 2.11 -> Usando um for loop para escrever multiplas imagens em um arquivo
f = imread('lena_gray_512.tif');
for q = 0:25:100
    filename = sprintf('series_%3d.jpg', q);
    imwrite (f, filename , 'quality', q);
end

# =========================================
# Exemplo 2.12 -> Extraindo uma subimage de uma imagem

% Esse exemplo criou a função subim()

# =========================================
# Exemplo 2.13 -> Uma ilustração da vetorização e introdução a função meshgrid

f = twodsin1(1, 1/(4*pi), 1/(4*pi), 512, 512);
figure, imshow(f, [ ])

# =========================================
# Exemplo 2.14 -> Utilizando cell arrays

# =========================================
# Exemplo 2.15 -> Utilizando cell arrays

# =====================================+
#               QUESTÃO 3              |
# =====================================+
img_rgb = imread('lena_color_256.tif');

img_rgb_converted_yiq = rgb_to_yiq(img_rgb);

figure, imshow(img_rgb_converted_yiq);

% NÃO CONSEGUIR EXECUTAR A FUNÇÃO rgb2ntsc POIS O OCTAVE NÃO RECONHECE

# =====================================+
#               QUESTÃO 4              |
# =====================================+

img_yiq = imread('./lena_gray_yiq.tif')

img_yiq_converted_rgb = yiq_to_rgb(img_yiq);

figure, imshow(img_yiq_converted_rgb);

# =====================================+
#               QUESTÃO 5              |
# =====================================+
img_rgb = imread('lena_color_256.tif');

img_hsi = rgb_to_hsi(img_rgb);
octave_img_hsi = rgb2hsv(img_rgb)

figure, imshow(img_hsi);
figure, imshow(octave_img_hsi);

% A FUNÇÃO rgb2hsv APRESENTA TONALIZADES MAIS CLARAS

# =====================================+
#               QUESTÃO 6              |
# =====================================+
img_rgb = hsi_to_rgb(img_hsi);

figure, imshow(img_rgb);

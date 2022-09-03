%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Proyecto 1. Nociones básicas de Imágenes                                         %%
%%  Materia: Tópico 1 (Procesamiento Secuencial de Imágenes usando Matlab)           %%
%%  Maestra: Sandra Luz Canchola Magdaleno                                           %%
%%                                                                                   %%
%%  Grupo: 30 - Semestre: 7mo                                                        %%
%%  Integrantes:                                                                     %%
%%   - García Vargas Michell Alejandro - 259663                                      %%
%%   - Jimenez Elizalde Andres - 259678                                              %%
%%   - León Paulin Daniel - 260541                                                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; %% Limpiar memoria
close all; %% Cerrar ventanas abiertas
clc; %% Limpiar consola

I1 = imread('C:\Users\alegv\Documents\Escuela\Tópico I\MATLAB\Entradas\frames 2\frame2_3.png'); %% Leer la imagen no. 1
I2 = imread('C:\Users\alegv\Documents\Escuela\Tópico I\MATLAB\Entradas\frames 2\frame2_2.png'); %% Leer la imagen no. 2

%% deteccionMovimientoUmbralizacionImagenes( I1, I2, Operacion, Sigma, Condicion, Color )
IMovUmbSubs = deteccionMovimientoUmbralizacionImagenes(I1, I2, 1, 0.10, 1, [255 100 255]);
IMovUmbOr = deteccionMovimientoUmbralizacionImagenes(I1, I2, 2, 150, 1, [255 100 255]);
IMovUmbAnd = deteccionMovimientoUmbralizacionImagenes(I1, I2, 3, 150, 1, [255 100 255]);

figure;
subplot(2, 3, 1); image(I1), title('Imagen No. 1');
subplot(2, 3, 2); image(I2), title('Imagen No. 2');
subplot(2, 3, 3); imagesc(IMovUmbSubs), title('Resta');
subplot(2, 3, 4); imagesc(IMovUmbOr), title('Or');
subplot(2, 3, 5); imagesc(IMovUmbAnd), title('And');
colormap(gray);

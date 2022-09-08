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

RutaIEntrada = 'C:\Users\danie\Desktop\Proyecto1-DeteccionMovimiento\entradas\'; %% Ruta de entrada (lectura) de las imágenes
RutaISalida = 'C:\Users\danie\Desktop\Proyecto1-DeteccionMovimiento\salidas\'; %% Ruta de salida (escritura) de las imágenes

I1_1 = imread(strcat(RutaIEntrada, 'par1_frame1.jpg')); %% Par 1 de imágenes, frame 1
I1_2 = imread(strcat(RutaIEntrada, 'par1_frame2.jpg')); %% Par 1 de imágenes, frame 2
I2_1 = imread(strcat(RutaIEntrada, 'par2_frame1.jpg')); %% Par 2 de imágenes, frame 1
I2_2 = imread(strcat(RutaIEntrada, 'par2_frame2.jpg')); %% Par 2 de imágenes, frame 2
I3_1 = imread(strcat(RutaIEntrada, 'par3_frame1.jpg')); %% Par 3 de imágenes, frame 1
I3_2 = imread(strcat(RutaIEntrada, 'par3_frame2.jpg')); %% Par 3 de imágenes, frame 2
I4_1 = imread(strcat(RutaIEntrada, 'par4_frame1.jpg')); %% Par 4 de imágenes, frame 1
I4_2 = imread(strcat(RutaIEntrada, 'par4_frame2.jpg')); %% Par 4 de imágenes, frame 2
I5_1 = imread(strcat(RutaIEntrada, 'par5_frame1.jpg')); %% Par 5 de imágenes, frame 1
I5_2 = imread(strcat(RutaIEntrada, 'par5_frame2.jpg')); %% Par 5 de imágenes, frame 2

Theta1 = 50; %% Referencia de umbralización 1
Theta2 = 150; %% Referencia de umbralización 2
Color = [255 100 255]; %% Color de la umbralización
Condicion = 1; %% Condición dentro (1) o fuera (2) del intervalo

%% Operaciónes para par 1 de imágenes Theta 1
iop1_1 = iop(I1_1, I1_2, 1);
iop1_2 = iop(I1_1, I1_2, 2);
iop1_3 = iop(I1_1, I1_2, 3);

mov1_1 = mov(iop1_1 ,Theta1, Condicion);
mov1_2 = mov(iop1_2 ,Theta1, Condicion);
mov1_3 = mov(iop1_3 ,Theta1, Condicion);

movDetectado1_1 = movDetectado(mov1_1, I1_2, Color);
movDetectado1_2 = movDetectado(mov1_2, I1_2, Color);
movDetectado1_3 = movDetectado(mov1_3, I1_2, Color);

figure;
subplot(1, 2, 1); imagesc(I1_1), title('Imagen I1-1');
subplot(1, 2, 2); imagesc(I1_2), title('Imagen I1-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop1_1), title('Substracción entre imágenes I1-1 - I1-2');
subplot(3, 3, 2); imagesc(mov1_1), title('Umbralización entre imágenes I1-1 - I1-2');
subplot(3, 3, 3); imagesc(movDetectado1_1), title('Movimiento detectado entre imágenes I1-1 - I1-2');

subplot(3, 3, 4); imagesc(iop1_2), title('Operación OR entre imágenes I1-1 - I1-2');
subplot(3, 3, 5); imagesc(mov1_2), title('Umbralización entre imágenes I1-1 - I1-2');
subplot(3, 3, 6); imagesc(movDetectado1_2), title('Movimiento detectado entre imágenes I1-1 - I1-2');

subplot(3, 3, 7); imagesc(iop1_3), title('Operación AND entre imágenes I1-1 - I1-2');
subplot(3, 3, 8); imagesc(mov1_3), title('Umbralización entre imágenes I1-1 - I1-2');
subplot(3, 3, 9); imagesc(movDetectado1_3), title('Movimiento detectado entre imágenes I1-1 - I1-2');
colormap(grey);

%% Operaciónes para par 2 de imágenes Theta 1
iop2_1 = iop(I2_1, I2_2, 1);
iop2_2 = iop(I2_1, I2_2, 2);
iop2_3 = iop(I2_1, I2_2, 3);

mov2_1 = mov(iop2_1 ,Theta1, Condicion);
mov2_2 = mov(iop2_2 ,Theta1, Condicion);
mov2_3 = mov(iop2_3 ,Theta1, Condicion);

movDetectado2_1 = movDetectado(mov2_1, I2_2, Color);
movDetectado2_2 = movDetectado(mov2_2, I2_2, Color);
movDetectado2_3 = movDetectado(mov2_3, I2_2, Color);

figure;
subplot(1, 2, 1); imagesc(I2_1), title('Imagen I2-1');
subplot(1, 2, 2); imagesc(I2_2), title('Imagen I2-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop2_1), title('Substracción entre imágenes I2-1 - I2-2');
subplot(3, 3, 2); imagesc(mov2_1), title('Umbralización entre imágenes I2-1 - I2-2');
subplot(3, 3, 3); imagesc(movDetectado2_1), title('Movimiento detectado entre imágenes I2-1 - I2-2');

subplot(3, 3, 4); imagesc(iop2_2), title('Operación OR entre imágenes I2-1 - I2-2');
subplot(3, 3, 5); imagesc(mov2_2), title('Umbralización entre imágenes I2-1 - I2-2');
subplot(3, 3, 6); imagesc(movDetectado2_2), title('Movimiento detectado entre imágenes I2-1 - I2-2');

subplot(3, 3, 7); imagesc(iop2_3), title('Operación AND entre imágenes I2-1 - I2-2');
subplot(3, 3, 8); imagesc(mov2_3), title('Umbralización entre imágenes I2-1 - I2-2');
subplot(3, 3, 9); imagesc(movDetectado2_3), title('Movimiento detectado entre imágenes I2-1 - I2-2');
colormap(grey);

%% Operaciónes para par 3 de imágenes Theta 1
iop3_1 = iop(I3_1, I3_2, 1);
iop3_2 = iop(I3_1, I3_2, 2);
iop3_3 = iop(I3_1, I3_2, 3);

mov3_1 = mov(iop3_1 ,Theta1, Condicion);
mov3_2 = mov(iop3_2 ,Theta1, Condicion);
mov3_3 = mov(iop3_3 ,Theta1, Condicion);

movDetectado3_1 = movDetectado(mov3_1, I3_2, Color);
movDetectado3_2 = movDetectado(mov3_2, I3_2, Color);
movDetectado3_3 = movDetectado(mov3_3, I3_2, Color);

figure;
subplot(1, 2, 1); imagesc(I3_1), title('Imagen I3-1');
subplot(1, 2, 2); imagesc(I3_2), title('Imagen I3-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop3_1), title('Substracción entre imágenes I3-1 - I3-2');
subplot(3, 3, 2); imagesc(mov3_1), title('Umbralización entre imágenes I3-1 - I3-2');
subplot(3, 3, 3); imagesc(movDetectado3_1), title('Movimiento detectado entre imágenes I3-1 - I3-2');

subplot(3, 3, 4); imagesc(iop3_2), title('Operación OR entre imágenes I3-1 - I3-2');
subplot(3, 3, 5); imagesc(mov3_2), title('Umbralización entre imágenes I3-1 - I3-2');
subplot(3, 3, 6); imagesc(movDetectado3_2), title('Movimiento detectado entre imágenes I3-1 - I3-2');

subplot(3, 3, 7); imagesc(iop3_3), title('Operación AND entre imágenes I3-1 - I3-2');
subplot(3, 3, 8); imagesc(mov3_3), title('Umbralización entre imágenes I3-1 - I3-2');
subplot(3, 3, 9); imagesc(movDetectado3_3), title('Movimiento detectado entre imágenes I3-1 - I3-2');
colormap(grey);

%% Operaciónes para par 4 de imágenes Theta 1
iop4_1 = iop(I4_1, I4_2, 1);
iop4_2 = iop(I4_1, I4_2, 2);
iop4_3 = iop(I4_1, I4_2, 3);

mov4_1 = mov(iop4_1 ,Theta1, Condicion);
mov4_2 = mov(iop4_2 ,Theta1, Condicion);
mov4_3 = mov(iop4_3 ,Theta1, Condicion);

movDetectado4_1 = movDetectado(mov4_1, I4_2, Color);
movDetectado4_2 = movDetectado(mov4_2, I4_2, Color);
movDetectado4_3 = movDetectado(mov4_3, I4_2, Color);

figure;
subplot(1, 2, 1); imagesc(I4_1), title('Imagen I4-1');
subplot(1, 2, 2); imagesc(I4_2), title('Imagen I4-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop4_1), title('Substracción entre imágenes I4-1 - I4-2');
subplot(3, 3, 2); imagesc(mov4_1), title('Umbralización entre imágenes I4-1 - I4-2');
subplot(3, 3, 3); imagesc(movDetectado4_1), title('Movimiento detectado entre imágenes I4-1 - I4-2');

subplot(3, 3, 4); imagesc(iop4_2), title('Operación OR entre imágenes I4-1 - I4-2');
subplot(3, 3, 5); imagesc(mov4_2), title('Umbralización entre imágenes I4-1 - I4-2');
subplot(3, 3, 6); imagesc(movDetectado4_2), title('Movimiento detectado entre imágenes I4-1 - I4-2');

subplot(3, 3, 7); imagesc(iop4_3), title('Operación AND entre imágenes I4-1 - I4-2');
subplot(3, 3, 8); imagesc(mov4_3), title('Umbralización entre imágenes I4-1 - I4-2');
subplot(3, 3, 9); imagesc(movDetectado4_3), title('Movimiento detectado entre imágenes I4-1 - I4-2');
colormap(grey);

%% Operaciónes para par 5 de imágenes Theta 1
iop5_1 = iop(I5_1, I5_2, 1);
iop5_2 = iop(I5_1, I5_2, 2);
iop5_3 = iop(I5_1, I5_2, 3);

mov5_1 = mov(iop5_1 ,Theta1, Condicion);
mov5_2 = mov(iop5_2 ,Theta1, Condicion);
mov5_3 = mov(iop5_3 ,Theta1, Condicion);

movDetectado5_1 = movDetectado(mov5_1, I5_2, Color);
movDetectado5_2 = movDetectado(mov5_2, I5_2, Color);
movDetectado5_3 = movDetectado(mov5_3, I5_2, Color);

figure;
subplot(1, 2, 1); imagesc(I5_1), title('Imagen I5-1');
subplot(1, 2, 2); imagesc(I5_2), title('Imagen I5-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop5_1), title('Substracción entre imágenes I5-1 - I5-2');
subplot(3, 3, 2); imagesc(mov5_1), title('Umbralización entre imágenes I5-1 - I5-2');
subplot(3, 3, 3); imagesc(movDetectado5_1), title('Movimiento detectado entre imágenes I5-1 - I5-2');

subplot(3, 3, 4); imagesc(iop5_2), title('Operación OR entre imágenes I5-1 - I5-2');
subplot(3, 3, 5); imagesc(mov5_2), title('Umbralización entre imágenes I5-1 - I5-2');
subplot(3, 3, 6); imagesc(movDetectado5_2), title('Movimiento detectado entre imágenes I5-1 - I5-2');

subplot(3, 3, 7); imagesc(iop5_3), title('Operación AND entre imágenes I5-1 - I5-2');
subplot(3, 3, 8); imagesc(mov5_3), title('Umbralización entre imágenes I5-1 - I5-2');
subplot(3, 3, 9); imagesc(movDetectado5_3), title('Movimiento detectado entre imágenes I5-1 - I5-2');
colormap(grey);

%% Guardando Imágenes 1
imwrite(iop1_1, strcat(RutaISalida, 'I1-T1-Substraccion-Iop.jpg'));
imwrite(mov1_1, strcat(RutaISalida, 'I1-T1-Substraccion-Mov.jpg'));
imwrite(movDetectado1_1, strcat(RutaISalida, 'I1-T1-Substraccion-movimientoDetectado.jpg'));
imwrite(iop1_2, strcat(RutaISalida, 'I1-T1-OR-Iop.jpg'));
imwrite(mov1_2, strcat(RutaISalida, 'I1-T1-OR-Mov.jpg'));
imwrite(movDetectado1_2, strcat(RutaISalida, 'I1-T1-OR-movimientoDetectado.jpg'));
imwrite(iop1_3, strcat(RutaISalida, 'I1-T1-AND-Iop.jpg'));
imwrite(mov1_3, strcat(RutaISalida, 'I1-T1-AND-Mov.jpg'));
imwrite(movDetectado1_3, strcat(RutaISalida, 'I1-T1-AND-movimientoDetectado.jpg'));

%% Guardando Imágenes 2
imwrite(iop2_1, strcat(RutaISalida, 'I2-T1-Substraccion-Iop.jpg'));
imwrite(mov2_1, strcat(RutaISalida, 'I2-T1-Substraccion-Mov.jpg'));
imwrite(movDetectado2_1, strcat(RutaISalida, 'I2-T1-Substraccion-movimientoDetectado.jpg'));
imwrite(iop2_2, strcat(RutaISalida, 'I2-T1-OR-Iop.jpg'));
imwrite(mov2_2, strcat(RutaISalida, 'I2-T1-OR-Mov.jpg'));
imwrite(movDetectado2_2, strcat(RutaISalida, 'I2-T1-OR-movimientoDetectado.jpg'));
imwrite(iop2_3, strcat(RutaISalida, 'I2-T1-AND-Iop.jpg'));
imwrite(mov2_3, strcat(RutaISalida, 'I2-T1-AND-Mov.jpg'));
imwrite(movDetectado2_3, strcat(RutaISalida, 'I2-T1-AND-movimientoDetectado.jpg'));

%% Guardando Imágenes 3
imwrite(iop3_1, strcat(RutaISalida, 'I3-T1-Substraccion-Iop.jpg'));
imwrite(mov3_1, strcat(RutaISalida, 'I3-T1-Substraccion-Mov.jpg'));
imwrite(movDetectado3_1, strcat(RutaISalida, 'I3-T1-Substraccion-movimientoDetectado.jpg'));
imwrite(iop3_2, strcat(RutaISalida, 'I3-T1-OR-Iop.jpg'));
imwrite(mov3_2, strcat(RutaISalida, 'I3-T1-OR-Mov.jpg'));
imwrite(movDetectado3_2, strcat(RutaISalida, 'I3-T1-OR-movimientoDetectado.jpg'));
imwrite(iop3_3, strcat(RutaISalida, 'I3-T1-AND-Iop.jpg'));
imwrite(mov3_3, strcat(RutaISalida, 'I3-T1-AND-Mov.jpg'));
imwrite(movDetectado3_3, strcat(RutaISalida, 'I3-T1-AND-movimientoDetectado.jpg'));

%% Guardando Imágenes 4
imwrite(iop4_1, strcat(RutaISalida, 'I4-T1-Substraccion-Iop.jpg'));
imwrite(mov4_1, strcat(RutaISalida, 'I4-T1-Substraccion-Mov.jpg'));
imwrite(movDetectado4_1, strcat(RutaISalida, 'I4-T1-Substraccion-movimientoDetectado.jpg'));
imwrite(iop4_2, strcat(RutaISalida, 'I4-T1-OR-Iop.jpg'));
imwrite(mov4_2, strcat(RutaISalida, 'I4-T1-OR-Mov.jpg'));
imwrite(movDetectado4_2, strcat(RutaISalida, 'I4-T1-OR-movimientoDetectado.jpg'));
imwrite(iop4_3, strcat(RutaISalida, 'I4-T1-AND-Iop.jpg'));
imwrite(mov4_3, strcat(RutaISalida, 'I4-T1-AND-Mov.jpg'));
imwrite(movDetectado4_3, strcat(RutaISalida, 'I4-T1-AND-movimientoDetectado.jpg'));

%% Guardando Imágenes 5
imwrite(iop5_1, strcat(RutaISalida, 'I5-T1-Substraccion-Iop.jpg'));
imwrite(mov5_1, strcat(RutaISalida, 'I5-T1-Substraccion-Mov.jpg'));
imwrite(movDetectado5_1, strcat(RutaISalida, 'I5-T1-Substraccion-movimientoDetectado.jpg'));
imwrite(iop5_2, strcat(RutaISalida, 'I5-T1-OR-Iop.jpg'));
imwrite(mov5_2, strcat(RutaISalida, 'I5-T1-OR-Mov.jpg'));
imwrite(movDetectado5_2, strcat(RutaISalida, 'I5-T1-OR-movimientoDetectado.jpg'));
imwrite(iop5_3, strcat(RutaISalida, 'I5-T1-AND-Iop.jpg'));
imwrite(mov5_3, strcat(RutaISalida, 'I5-T1-AND-Mov.jpg'));
imwrite(movDetectado5_3, strcat(RutaISalida, 'I5-T1-AND-movimientoDetectado.jpg'));


%% Operaciónes para par 1 de imágenes Theta 2
iop1_1_T2 = iop(I1_1, I1_2, 1);
iop1_2_T2 = iop(I1_1, I1_2, 2);
iop1_3_T2 = iop(I1_1, I1_2, 3);

mov1_1_T2 = mov(iop1_1_T2 ,Theta2, Condicion);
mov1_2_T2 = mov(iop1_2_T2 ,Theta2, Condicion);
mov1_3_T2 = mov(iop1_3_T2 ,Theta2, Condicion);

movDetectado1_1_T2 = movDetectado(mov1_1_T2, I1_2, Color);
movDetectado1_2_T2 = movDetectado(mov1_2_T2, I1_2, Color);
movDetectado1_3_T2 = movDetectado(mov1_3_T2, I1_2, Color);

figure;
subplot(1, 2, 1); imagesc(I1_1), title('Imagen I1-1');
subplot(1, 2, 2); imagesc(I1_2), title('Imagen I1-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop1_1_T2), title('Theta2 - Substracción entre imágenes I1-1 - I1-2');
subplot(3, 3, 2); imagesc(mov1_1_T2), title('Theta2 - Umbralización entre imágenes I1-1 - I1-2');
subplot(3, 3, 3); imagesc(movDetectado1_1_T2), title('Theta2 - Movimiento detectado entre imágenes I1-1 - I1-2');

subplot(3, 3, 4); imagesc(iop1_2_T2), title('Theta2 - Operación OR entre imágenes I1-1 - I1-2');
subplot(3, 3, 5); imagesc(mov1_2_T2), title('Theta2 - Umbralización entre imágenes I1-1 - I1-2');
subplot(3, 3, 6); imagesc(movDetectado1_2_T2), title('Theta2 - Movimiento detectado entre imágenes I1-1 - I1-2');

subplot(3, 3, 7); imagesc(iop1_3_T2), title('Theta2 - Operación AND entre imágenes I1-1 - I1-2');
subplot(3, 3, 8); imagesc(mov1_3_T2), title('Theta2 - Umbralización entre imágenes I1-1 - I1-2');
subplot(3, 3, 9); imagesc(movDetectado1_3_T2), title('Theta2 - Movimiento detectado entre imágenes I1-1 - I1-2');
colormap(grey);

%% Operaciónes para par 2 de imágenes Theta 2
iop2_1 = iop(I2_1, I2_2, 1);
iop2_2 = iop(I2_1, I2_2, 2);
iop2_3 = iop(I2_1, I2_2, 3);

mov2_1 = mov(iop2_1 ,Theta2, Condicion);
mov2_2 = mov(iop2_2 ,Theta2, Condicion);
mov2_3 = mov(iop2_3 ,Theta2, Condicion);

movDetectado2_1 = movDetectado(mov2_1, I2_2, Color);
movDetectado2_2 = movDetectado(mov2_2, I2_2, Color);
movDetectado2_3 = movDetectado(mov2_3, I2_2, Color);

figure;
subplot(1, 2, 1); imagesc(I2_1), title('Imagen I2-1');
subplot(1, 2, 2); imagesc(I2_2), title('Imagen I2-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop2_1), title('Theta2 - Substracción entre imágenes I2-1 - I2-2');
subplot(3, 3, 2); imagesc(mov2_1), title('Theta2 - Umbralización entre imágenes I2-1 - I2-2');
subplot(3, 3, 3); imagesc(movDetectado2_1), title('Theta2 - Movimiento detectado entre imágenes I2-1 - I2-2');

subplot(3, 3, 4); imagesc(iop2_2), title('Theta2 - Operación OR entre imágenes I2-1 - I2-2');
subplot(3, 3, 5); imagesc(mov2_2), title('Theta2 - Umbralización entre imágenes I2-1 - I2-2');
subplot(3, 3, 6); imagesc(movDetectado2_2), title('Theta2 - Movimiento detectado entre imágenes I2-1 - I2-2');

subplot(3, 3, 7); imagesc(iop2_3), title('Theta2 - Operación AND entre imágenes I2-1 - I2-2');
subplot(3, 3, 8); imagesc(mov2_3), title('Theta2 - Umbralización entre imágenes I2-1 - I2-2');
subplot(3, 3, 9); imagesc(movDetectado2_3), title('Theta2 - Movimiento detectado entre imágenes I2-1 - I2-2');
colormap(grey);

%% Operaciónes para par 3 de imágenes Theta 2
iop3_1_T2 = iop(I3_1, I3_2, 1);
iop3_2_T2 = iop(I3_1, I3_2, 2);
iop3_3_T2 = iop(I3_1, I3_2, 3);

mov3_1_T2 = mov(iop3_1_T2 ,Theta2, Condicion);
mov3_2_T2 = mov(iop3_2_T2 ,Theta2, Condicion);
mov3_3_T2 = mov(iop3_3_T2 ,Theta2, Condicion);

movDetectado3_1_T2 = movDetectado(mov3_1_T2, I3_2, Color);
movDetectado3_2_T2 = movDetectado(mov3_2, I3_2, Color);
movDetectado3_3_T2 = movDetectado(mov3_3, I3_2, Color);

figure;
subplot(1, 2, 1); imagesc(I3_1), title('Imagen I3-1');
subplot(1, 2, 2); imagesc(I3_2), title('Imagen I3-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop3_1_T2), title('Theta2 - Substracción entre imágenes I3-1 - I3-2');
subplot(3, 3, 2); imagesc(mov3_1), title('Theta2 - Umbralización entre imágenes I3-1 - I3-2');
subplot(3, 3, 3); imagesc(movDetectado3_1_T2), title('Theta2 - Movimiento detectado entre imágenes I3-1 - I3-2');

subplot(3, 3, 4); imagesc(iop3_2_T2), title('Theta2 - Operación OR entre imágenes I3-1 - I3-2');
subplot(3, 3, 5); imagesc(mov3_2), title('Theta2 - Umbralización entre imágenes I3-1 - I3-2');
subplot(3, 3, 6); imagesc(movDetectado3_2_T2), title('Theta2 - Movimiento detectado entre imágenes I3-1 - I3-2');

subplot(3, 3, 7); imagesc(iop3_3_T2), title('Theta2 - Operación AND entre imágenes I3-1 - I3-2');
subplot(3, 3, 8); imagesc(mov3_3), title('Theta2 - Umbralización entre imágenes I3-1 - I3-2');
subplot(3, 3, 9); imagesc(movDetectado3_3), title('Theta2 - Movimiento detectado entre imágenes I3-1 - I3-2');
colormap(grey);

%% Operaciónes para par 4 de imágenes Theta 2
iop4_1_T2 = iop(I4_1, I4_2, 1);
iop4_2_T2 = iop(I4_1, I4_2, 2);
iop4_3_T2 = iop(I4_1, I4_2, 3);

mov4_1_T2 = mov(iop4_1_T2 ,Theta2, Condicion);
mov4_2_T2 = mov(iop4_2_T2 ,Theta2, Condicion);
mov4_3_T2 = mov(iop4_3_T2 ,Theta2, Condicion);

movDetectado4_1_T2 = movDetectado(mov4_1_T2, I4_2, Color);
movDetectado4_2_T2 = movDetectado(mov4_2_T2, I4_2, Color);
movDetectado4_3_T2 = movDetectado(mov4_3_T2, I4_2, Color);

figure;
subplot(1, 2, 1); imagesc(I4_1), title('Imagen I4-1');
subplot(1, 2, 2); imagesc(I4_2), title('Imagen I4-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop4_1_T2), title('Theta2 - Substracción entre imágenes I4-1 - I4-2');
subplot(3, 3, 2); imagesc(mov4_1_T2), title('Theta2 - Umbralización entre imágenes I4-1 - I4-2');
subplot(3, 3, 3); imagesc(movDetectado4_1_T2), title('Theta2 - Movimiento detectado entre imágenes I4-1 - I4-2');

subplot(3, 3, 4); imagesc(iop4_2_T2), title('Theta2 - Operación OR entre imágenes I4-1 - I4-2');
subplot(3, 3, 5); imagesc(mov4_2_T2), title('Theta2 - Umbralización entre imágenes I4-1 - I4-2');
subplot(3, 3, 6); imagesc(movDetectado4_2_T2), title('Theta2 - Movimiento detectado entre imágenes I4-1 - I4-2');

subplot(3, 3, 7); imagesc(iop4_3_T2), title('Theta2 - Operación AND entre imágenes I4-1 - I4-2');
subplot(3, 3, 8); imagesc(mov4_3_T2), title('Theta2 - Umbralización entre imágenes I4-1 - I4-2');
subplot(3, 3, 9); imagesc(movDetectado4_3_T2), title('Theta2 - Movimiento detectado entre imágenes I4-1 - I4-2');
colormap(grey);

%% Operaciónes para par 5 de imágenes Theta 2
iop5_1_T2 = iop(I5_1, I5_2, 1);
iop5_2_T2 = iop(I5_1, I5_2, 2);
iop5_3_T2 = iop(I5_1, I5_2, 3);

mov5_1_T2 = mov(iop5_1_T2 ,Theta2, Condicion);
mov5_2_T2 = mov(iop5_2_T2 ,Theta2, Condicion);
mov5_3_T2 = mov(iop5_3_T2 ,Theta2, Condicion);

movDetectado5_1_T2 = movDetectado(mov5_1_T2, I5_2, Color);
movDetectado5_2_T2 = movDetectado(mov5_2_T2, I5_2, Color);
movDetectado5_3_T2 = movDetectado(mov5_3_T2, I5_2, Color);

figure;
subplot(1, 2, 1); imagesc(I5_1), title('Imagen I5-1');
subplot(1, 2, 2); imagesc(I5_2), title('Imagen I5-2');
colormap(grey);

figure;
subplot(3, 3, 1); imagesc(iop5_1_T2), title('Theta2 - Substracción entre imágenes I5-1 - I5-2');
subplot(3, 3, 2); imagesc(mov5_1_T2), title('Theta2 - Umbralización entre imágenes I5-1 - I5-2');
subplot(3, 3, 3); imagesc(movDetectado5_1_T2), title('Theta2 - Movimiento detectado entre imágenes I5-1 - I5-2');

subplot(3, 3, 4); imagesc(iop5_2_T2), title('Theta2 - Operación OR entre imágenes I5-1 - I5-2');
subplot(3, 3, 5); imagesc(mov5_2_T2), title('Theta2 - Umbralización entre imágenes I5-1 - I5-2');
subplot(3, 3, 6); imagesc(movDetectado5_2_T2), title('Theta2 - Movimiento detectado entre imágenes I5-1 - I5-2');

subplot(3, 3, 7); imagesc(iop5_3_T2), title('Theta2 - Operación AND entre imágenes I5-1 - I5-2');
subplot(3, 3, 8); imagesc(mov5_3_T2), title('Theta2 - Umbralización entre imágenes I5-1 - I5-2');
subplot(3, 3, 9); imagesc(movDetectado5_3_T2), title('Theta2 - Movimiento detectado entre imágenes I5-1 - I5-2');
colormap(grey);

%% Guardando imágenes 1 con Theta 2
imwrite(iop1_1_T2, strcat(RutaISalida, 'I1-T2-Substraccion-Iop.jpg'));
imwrite(mov1_1_T2, strcat(RutaISalida, 'I1-T2-Substraccion-Mov.jpg'));
imwrite(movDetectado1_1_T2, strcat(RutaISalida, 'I1-T2-Substraccion-movimientoDetectado.jpg'));
imwrite(iop1_2_T2, strcat(RutaISalida, 'I1-T2-OR-Iop.jpg'));
imwrite(mov1_2_T2, strcat(RutaISalida, 'I1-T2-OR-Mov.jpg'));
imwrite(movDetectado1_2_T2, strcat(RutaISalida, 'I1-T2-OR-movimientoDetectado.jpg'));
imwrite(iop1_3_T2, strcat(RutaISalida, 'I1-T2-AND-Iop.jpg'));
imwrite(mov1_3_T2, strcat(RutaISalida, 'I1-T2-AND-Mov.jpg'));
imwrite(movDetectado1_3_T2, strcat(RutaISalida, 'I1-T2-AND-movimientoDetectado.jpg'));

%% Guardando imágenes 2 con Theta 2
imwrite(iop2_1, strcat(RutaISalida, 'I2-T2-Substraccion-Iop.jpg'));
imwrite(mov2_1, strcat(RutaISalida, 'I2-T2-Substraccion-Mov.jpg'));
imwrite(movDetectado2_1, strcat(RutaISalida, 'I2-T2-Substraccion-movimientoDetectado.jpg'));
imwrite(iop2_2, strcat(RutaISalida, 'I2-T2-OR-Iop.jpg'));
imwrite(mov2_2, strcat(RutaISalida, 'I2-T2-OR-Mov.jpg'));
imwrite(movDetectado2_2, strcat(RutaISalida, 'I2-T2-OR-movimientoDetectado.jpg'));
imwrite(iop2_3, strcat(RutaISalida, 'I2-T2-AND-Iop.jpg'));
imwrite(mov2_3, strcat(RutaISalida, 'I2-T2-AND-Mov.jpg'));
imwrite(movDetectado2_3, strcat(RutaISalida, 'I2-T2-AND-movimientoDetectado.jpg'));

%% Guardando imágenes 3 con Theta 2
imwrite(iop3_1_T2, strcat(RutaISalida, 'I3-T2-Substraccion-Iop.jpg'));
imwrite(mov3_1, strcat(RutaISalida, 'I3-T2-Substraccion-Mov.jpg'));
imwrite(movDetectado3_1, strcat(RutaISalida, 'I3-T2-Substraccion-movimientoDetectado.jpg'));
imwrite(iop3_2_T2, strcat(RutaISalida, 'I3-T2-OR-Iop.jpg'));
imwrite(mov3_2, strcat(RutaISalida, 'I3-T2-OR-Mov.jpg'));
imwrite(movDetectado3_2, strcat(RutaISalida, 'I3-T2-OR-movimientoDetectado.jpg'));
imwrite(iop3_3_T2, strcat(RutaISalida, 'I3-T2-AND-Iop.jpg'));
imwrite(mov3_3, strcat(RutaISalida, 'I3-T2-AND-Mov.jpg'));
imwrite(movDetectado3_3, strcat(RutaISalida, 'I3-T2-AND-movimientoDetectado.jpg'));

%% Guardando imágenes 4 con Theta 2
imwrite(iop4_1_T2, strcat(RutaISalida, 'I4-T2-Substraccion-Iop.jpg'));
imwrite(mov4_1_T2, strcat(RutaISalida, 'I4-T2-Substraccion-Mov.jpg'));
imwrite(movDetectado4_1_T2, strcat(RutaISalida, 'I4-T2-Substraccion-movimientoDetectado.jpg'));
imwrite(iop4_2_T2, strcat(RutaISalida, 'I4-T2-OR-Iop.jpg'));
imwrite(mov4_2_T2, strcat(RutaISalida, 'I4-T2-OR-Mov.jpg'));
imwrite(movDetectado4_2_T2, strcat(RutaISalida, 'I4-T2-OR-movimientoDetectado.jpg'));
imwrite(iop4_3_T2, strcat(RutaISalida, 'I4-T2-AND-Iop.jpg'));
imwrite(mov4_3_T2, strcat(RutaISalida, 'I4-T2-AND-Mov.jpg'));
imwrite(movDetectado4_3_T2, strcat(RutaISalida, 'I4-T2-AND-movimientoDetectado.jpg'));

%% Guardando imágenes 5 con Theta 2
imwrite(iop5_1_T2, strcat(RutaISalida, 'I5-T2-Substraccion-Iop.jpg'));
imwrite(mov5_1_T2, strcat(RutaISalida, 'I5-T2-Substraccion-Mov.jpg'));
imwrite(movDetectado5_1_T2, strcat(RutaISalida, 'I5-T2-Substraccion-movimientoDetectado.jpg'));
imwrite(iop5_2_T2, strcat(RutaISalida, 'I5-T2-OR-Iop.jpg'));
imwrite(mov5_2_T2, strcat(RutaISalida, 'I5-T2-OR-Mov.jpg'));
imwrite(movDetectado5_2_T2, strcat(RutaISalida, 'I5-T2-OR-movimientoDetectado.jpg'));
imwrite(iop5_3_T2, strcat(RutaISalida, 'I5-T2-AND-Iop.jpg'));
imwrite(mov5_3_T2, strcat(RutaISalida, 'I5-T2-AND-Mov.jpg'));
imwrite(movDetectado5_3_T2, strcat(RutaISalida, 'I5-T2-AND-movimientoDetectado.jpg'));




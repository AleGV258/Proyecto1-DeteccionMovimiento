%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Proyecto 1. Nociones b�sicas de Im�genes                                         %%
%%  Materia: T�pico 1 (Procesamiento Secuencial de Im�genes usando Matlab)           %%
%%  Maestra: Sandra Luz Canchola Magdaleno                                           %%
%%                                                                                   %%
%%  Grupo: 30 - Semestre: 7mo                                                        %%
%%  Integrantes:                                                                     %%
%%   - Garc�a Vargas Michell Alejandro - 259663                                      %%
%%   - Jimenez Elizalde Andres - 259678                                              %%
%%   - Le�n Paulin Daniel - 260541                                                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; %% Limpiar memoria
close all; %% Cerrar ventanas abiertas
clc; %% Limpiar consola

RutaIEntrada = 'C:\Users\alegv\Documents\Escuela\T�pico I\MATLAB\Entradas\proyecto\'; %% Ruta de entrada (lectura) de las im�genes
RutaISalida = 'C:\Users\alegv\Documents\Escuela\T�pico I\MATLAB\Salidas\proyecto\'; %% Ruta de salida (escritura) de las im�genes

I1_1 = imread(strcat(RutaIEntrada, 'par1_frame1.jpg')); %% Par 1 de im�genes, frame 1
I1_2 = imread(strcat(RutaIEntrada, 'par1_frame2.jpg')); %% Par 1 de im�genes, frame 2
I2_1 = imread(strcat(RutaIEntrada, 'par2_frame1.jpg')); %% Par 2 de im�genes, frame 1
I2_2 = imread(strcat(RutaIEntrada, 'par2_frame2.jpg')); %% Par 2 de im�genes, frame 2
I3_1 = imread(strcat(RutaIEntrada, 'par3_frame1.jpg')); %% Par 3 de im�genes, frame 1
I3_2 = imread(strcat(RutaIEntrada, 'par3_frame2.jpg')); %% Par 3 de im�genes, frame 2
I4_1 = imread(strcat(RutaIEntrada, 'par4_frame1.jpg')); %% Par 4 de im�genes, frame 1
I4_2 = imread(strcat(RutaIEntrada, 'par4_frame2.jpg')); %% Par 4 de im�genes, frame 2
I5_1 = imread(strcat(RutaIEntrada, 'par5_frame1.jpg')); %% Par 5 de im�genes, frame 1
I5_2 = imread(strcat(RutaIEntrada, 'par5_frame2.jpg')); %% Par 5 de im�genes, frame 2

Theta1 = 30; %% Referencia de umbralizaci�n 1
Theta2 = 150; %% Referencia de umbralizaci�n 2
Color = [255 100 255]; %% Color de la umbralizaci�n
Condicion = 1; %% Condici�n dentro (1) o fuera (2) del intervalo

%% Par�metros - deteccionMovimientoUmbralizacionImagenes( I1, I2, Operacion, Theta, Condicion, Color )
%% Detecci�n movimiento primer par de im�genes, primera referencia
IMovUmbSubs1T1 = deteccionMovimientoUmbralizacionImagenes(I1_1, I1_2, 1, Theta1, Condicion, Color); %% Par 1, diferencia por substracci�n
IMovUmbOr1T1 = deteccionMovimientoUmbralizacionImagenes(I1_1, I1_2, 2, Theta1, Condicion, Color); %% Par 1, diferencia por or
IMovUmbAnd1T1 = deteccionMovimientoUmbralizacionImagenes(I1_1, I1_2, 3, Theta1, Condicion, Color); %% Par 1, diferencia por and
%% Detecci�n movimiento segundo par de im�genes, primera referencia
IMovUmbSubs2T1 = deteccionMovimientoUmbralizacionImagenes(I2_1, I2_2, 1, Theta1, Condicion, Color); %% Par 2, diferencia por substracci�n
IMovUmbOr2T1 = deteccionMovimientoUmbralizacionImagenes(I2_1, I2_2, 2, Theta1, Condicion, Color); %% Par 2, diferencia por or
IMovUmbAnd2T1 = deteccionMovimientoUmbralizacionImagenes(I2_1, I2_2, 3, Theta1, Condicion, Color); %% Par 2, diferencia por and
%% Detecci�n movimiento tercer par de im�genes, primera referencia
IMovUmbSubs3T1 = deteccionMovimientoUmbralizacionImagenes(I3_1, I3_2, 1, Theta1, Condicion, Color); %% Par 3, diferencia por substracci�n
IMovUmbOr3T1 = deteccionMovimientoUmbralizacionImagenes(I3_1, I3_2, 2, Theta1, Condicion, Color); %% Par 3, diferencia por or
IMovUmbAnd3T1 = deteccionMovimientoUmbralizacionImagenes(I3_1, I3_2, 3, Theta1, Condicion, Color); %% Par 3, diferencia por and
%% Detecci�n movimiento cuarto par de im�genes, primera referencia
IMovUmbSubs4T1 = deteccionMovimientoUmbralizacionImagenes(I4_1, I4_2, 1, Theta1, Condicion, Color); %% Par 4, diferencia por substracci�n
IMovUmbOr4T1 = deteccionMovimientoUmbralizacionImagenes(I4_1, I4_2, 2, Theta1, Condicion, Color); %% Par 4, diferencia por or
IMovUmbAnd4T1 = deteccionMovimientoUmbralizacionImagenes(I4_1, I4_2, 3, Theta1, Condicion, Color); %% Par 4, diferencia por and
%% Detecci�n movimiento quinto par de im�genes, primera referencia
IMovUmbSubs5T1 = deteccionMovimientoUmbralizacionImagenes(I5_1, I5_2, 1, Theta1, Condicion, Color); %% Par 5, diferencia por substracci�n
IMovUmbOr5T1 = deteccionMovimientoUmbralizacionImagenes(I5_1, I5_2, 2, Theta1, Condicion, Color); %% Par 5, diferencia por or
IMovUmbAnd5T1 = deteccionMovimientoUmbralizacionImagenes(I5_1, I5_2, 3, Theta1, Condicion, Color); %% Par 5, diferencia por and

%% Detecci�n movimiento primer par de im�genes, segunda referencia
IMovUmbSubs1T2 = deteccionMovimientoUmbralizacionImagenes(I1_1, I1_2, 1, Theta2, 1, Color); %% Par 1, diferencia por substracci�n
IMovUmbOr1T2 = deteccionMovimientoUmbralizacionImagenes(I1_1, I1_2, 2, Theta2, 1, Color); %% Par 1, diferencia por or
IMovUmbAnd1T2 = deteccionMovimientoUmbralizacionImagenes(I1_1, I1_2, 3, Theta2, 1, Color); %% Par 1, diferencia por and
%% Detecci�n movimiento segundo par de im�genes, segunda referencia
IMovUmbSubs2T2 = deteccionMovimientoUmbralizacionImagenes(I2_1, I2_2, 1, Theta2, 1, Color); %% Par 2, diferencia por substracci�n
IMovUmbOr2T2 = deteccionMovimientoUmbralizacionImagenes(I2_1, I2_2, 2, Theta2, 1, Color); %% Par 2, diferencia por or
IMovUmbAnd2T2 = deteccionMovimientoUmbralizacionImagenes(I2_1, I2_2, 3, Theta2, 1, Color); %% Par 2, diferencia por and
%% Detecci�n movimiento tercer par de im�genes, segunda referencia
IMovUmbSubs3T2 = deteccionMovimientoUmbralizacionImagenes(I3_1, I3_2, 1, Theta2, 1, Color); %% Par 3, diferencia por substracci�n
IMovUmbOr3T2 = deteccionMovimientoUmbralizacionImagenes(I3_1, I3_2, 2, Theta2, 1, Color); %% Par 3, diferencia por or
IMovUmbAnd3T2 = deteccionMovimientoUmbralizacionImagenes(I3_1, I3_2, 3, Theta2, 1, Color); %% Par 3, diferencia por and
%% Detecci�n movimiento cuarto par de im�genes, segunda referencia
IMovUmbSubs4T2 = deteccionMovimientoUmbralizacionImagenes(I4_1, I4_2, 1, Theta2, 1, Color); %% Par 4, diferencia por substracci�n
IMovUmbOr4T2 = deteccionMovimientoUmbralizacionImagenes(I4_1, I4_2, 2, Theta2, 1, Color); %% Par 4, diferencia por or
IMovUmbAnd4T2 = deteccionMovimientoUmbralizacionImagenes(I4_1, I4_2, 3, Theta2, 1, Color); %% Par 4, diferencia por and
%% Detecci�n movimiento quinto par de im�genes, segunda referencia
IMovUmbSubs5T2 = deteccionMovimientoUmbralizacionImagenes(I5_1, I5_2, 1, Theta2, 1, Color); %% Par 5, diferencia por substracci�n
IMovUmbOr5T2 = deteccionMovimientoUmbralizacionImagenes(I5_1, I5_2, 2, Theta2, 1, Color); %% Par 5, diferencia por or
IMovUmbAnd5T2 = deteccionMovimientoUmbralizacionImagenes(I5_1, I5_2, 3, Theta2, 1, Color); %% Par 5, diferencia por and

%% Despliegue de las im�genes
%% Primer par de im�genes
figure;
subplot(3, 3, 1); imagesc(I1_1), title('Par 1 de im�genes, frame 1');
subplot(3, 3, 2); imagesc(I1_2), title('Par 1 de im�genes, frame 2');
subplot(3, 3, 4); imagesc(IMovUmbSubs1T1), title('Resta, referencia 1');
subplot(3, 3, 5); imagesc(IMovUmbOr1T1), title('Or, referencia 1');
subplot(3, 3, 6); imagesc(IMovUmbAnd1T1), title('And, referencia 1');
subplot(3, 3, 7); imagesc(IMovUmbSubs1T2), title('Resta, referencia 2');
subplot(3, 3, 8); imagesc(IMovUmbOr1T2), title('Or, referencia 2');
subplot(3, 3, 9); imagesc(IMovUmbAnd1T2), title('And, referencia 2');
colormap(gray);
%% Segundo par de im�genes
figure;
subplot(3, 3, 1); imagesc(I2_1), title('Par 2 de im�genes, frame 1');
subplot(3, 3, 2); imagesc(I2_2), title('Par 2 de im�genes, frame 2');
subplot(3, 3, 4); imagesc(IMovUmbSubs2T1), title('Resta, referencia 1');
subplot(3, 3, 5); imagesc(IMovUmbOr2T1), title('Or, referencia 1');
subplot(3, 3, 6); imagesc(IMovUmbAnd2T1), title('And, referencia 1');
subplot(3, 3, 7); imagesc(IMovUmbSubs2T2), title('Resta, referencia 2');
subplot(3, 3, 8); imagesc(IMovUmbOr2T2), title('Or, referencia 2');
subplot(3, 3, 9); imagesc(IMovUmbAnd2T2), title('And, referencia 2');
colormap(gray);
%% Tercer par de im�genes
figure;
subplot(3, 3, 1); imagesc(I3_1), title('Par 3 de im�genes, frame 1');
subplot(3, 3, 2); imagesc(I3_2), title('Par 3 de im�genes, frame 2');
subplot(3, 3, 4); imagesc(IMovUmbSubs3T1), title('Resta, referencia 1');
subplot(3, 3, 5); imagesc(IMovUmbOr3T1), title('Or, referencia 1');
subplot(3, 3, 6); imagesc(IMovUmbAnd3T1), title('And, referencia 1');
subplot(3, 3, 7); imagesc(IMovUmbSubs3T2), title('Resta, referencia 2');
subplot(3, 3, 8); imagesc(IMovUmbOr3T2), title('Or, referencia 2');
subplot(3, 3, 9); imagesc(IMovUmbAnd3T2), title('And, referencia 2');
colormap(gray);
%% Cuarto par de im�genes
figure;
subplot(3, 3, 1); imagesc(I4_1), title('Par 4 de im�genes, frame 1');
subplot(3, 3, 2); imagesc(I4_2), title('Par 4 de im�genes, frame 2');
subplot(3, 3, 4); imagesc(IMovUmbSubs4T1), title('Resta, referencia 1');
subplot(3, 3, 5); imagesc(IMovUmbOr4T1), title('Or, referencia 1');
subplot(3, 3, 6); imagesc(IMovUmbAnd4T1), title('And, referencia 1');
subplot(3, 3, 7); imagesc(IMovUmbSubs4T2), title('Resta, referencia 2');
subplot(3, 3, 8); imagesc(IMovUmbOr4T2), title('Or, referencia 2');
subplot(3, 3, 9); imagesc(IMovUmbAnd4T2), title('And, referencia 2');
colormap(gray);
%% Quinto par de im�genes
figure;
subplot(3, 3, 1); imagesc(I5_1), title('Par 5 de im�genes, frame 1');
subplot(3, 3, 2); imagesc(I5_2), title('Par 5 de im�genes, frame 2');
subplot(3, 3, 4); imagesc(IMovUmbSubs5T1), title('Resta, referencia 1');
subplot(3, 3, 5); imagesc(IMovUmbOr5T1), title('Or, referencia 1');
subplot(3, 3, 6); imagesc(IMovUmbAnd5T1), title('And, referencia 1');
subplot(3, 3, 7); imagesc(IMovUmbSubs5T2), title('Resta, referencia 2');
subplot(3, 3, 8); imagesc(IMovUmbOr5T2), title('Or, referencia 2');
subplot(3, 3, 9); imagesc(IMovUmbAnd5T2), title('And, referencia 2');
colormap(gray);

%% Escritura de las im�genes en un directorio
%% Primer par de im�genes
imwrite(IMovUmbSubs1T1, strcat(RutaISalida, 'par1_referencia1_subs.jpg'));
imwrite(IMovUmbOr1T1, strcat(RutaISalida, 'par1_referencia1_or.jpg'));
imwrite(IMovUmbAnd1T1, strcat(RutaISalida, 'par1_referencia1_and.jpg'));
imwrite(IMovUmbSubs1T2, strcat(RutaISalida, 'par1_referencia2_subs.jpg'));
imwrite(IMovUmbOr1T2, strcat(RutaISalida, 'par1_referencia2_or.jpg'));
imwrite(IMovUmbAnd1T2, strcat(RutaISalida, 'par1_referencia2_and.jpg'));
%% Segundo par de im�genes
imwrite(IMovUmbSubs2T1, strcat(RutaISalida, 'par2_referencia1_subs.jpg'));
imwrite(IMovUmbOr2T1, strcat(RutaISalida, 'par2_referencia1_or.jpg'));
imwrite(IMovUmbAnd2T1, strcat(RutaISalida, 'par2_referencia1_and.jpg'));
imwrite(IMovUmbSubs2T2, strcat(RutaISalida, 'par2_referencia2_subs.jpg'));
imwrite(IMovUmbOr2T2, strcat(RutaISalida, 'par2_referencia2_or.jpg'));
imwrite(IMovUmbAnd2T2, strcat(RutaISalida, 'par2_referencia2_and.jpg'));
%% Tercer par de im�genes
imwrite(IMovUmbSubs3T1, strcat(RutaISalida, 'par3_referencia1_subs.jpg'));
imwrite(IMovUmbOr3T1, strcat(RutaISalida, 'par3_referencia1_or.jpg'));
imwrite(IMovUmbAnd3T1, strcat(RutaISalida, 'par3_referencia1_and.jpg'));
imwrite(IMovUmbSubs3T2, strcat(RutaISalida, 'par3_referencia2_subs.jpg'));
imwrite(IMovUmbOr3T2, strcat(RutaISalida, 'par3_referencia2_or.jpg'));
imwrite(IMovUmbAnd3T2, strcat(RutaISalida, 'par3_referencia2_and.jpg'));
%% Cuarto par de im�genes
imwrite(IMovUmbSubs4T1, strcat(RutaISalida, 'par4_referencia1_subs.jpg'));
imwrite(IMovUmbOr4T1, strcat(RutaISalida, 'par4_referencia1_or.jpg'));
imwrite(IMovUmbAnd4T1, strcat(RutaISalida, 'par4_referencia1_and.jpg'));
imwrite(IMovUmbSubs4T2, strcat(RutaISalida, 'par4_referencia2_subs.jpg'));
imwrite(IMovUmbOr4T2, strcat(RutaISalida, 'par4_referencia2_or.jpg'));
imwrite(IMovUmbAnd4T2, strcat(RutaISalida, 'par4_referencia2_and.jpg'));
%% Quinto par de im�genes
imwrite(IMovUmbSubs5T1, strcat(RutaISalida, 'par5_referencia1_subs.jpg'));
imwrite(IMovUmbOr5T1, strcat(RutaISalida, 'par5_referencia1_or.jpg'));
imwrite(IMovUmbAnd5T1, strcat(RutaISalida, 'par5_referencia1_and.jpg'));
imwrite(IMovUmbSubs5T2, strcat(RutaISalida, 'par5_referencia2_subs.jpg'));
imwrite(IMovUmbOr5T2, strcat(RutaISalida, 'par5_referencia2_or.jpg'));
imwrite(IMovUmbAnd5T2, strcat(RutaISalida, 'par5_referencia2_and.jpg'));





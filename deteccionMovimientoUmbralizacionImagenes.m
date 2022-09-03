%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Proyecto 1. Nociones básicas de imágenes                                         %%
%%  Materia: Tópico 1 (Procesamiento Secuencial de imágenes usando Matlab)           %%
%%  Maestra: Sandra Luz Canchola Magdaleno                                           %%
%%                                                                                   %%
%%  Grupo: 30 - Semestre: 7mo                                                        %%
%%  Integrantes:                                                                     %%
%%   - García Vargas Michell Alejandro - 259663                                      %%
%%   - Jimenez Elizalde Andres - 259678                                              %%
%%   - León Paulin Daniel - 260541                                                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Entradas:                                                                        %%
%%  I1 e I2 - Son las imágenes de entrada, las cuales se van a                       %% 
%%            comparar para encontrar movimiento                                     %%
%%  Operacion - Indica cual estrategia desea el usuario hacer                        %%
%%              para detectar el movimiento de las imágenes:                         %%
%%              1. Substracción                                                      %%
%%              2. Or                                                                %%
%%              3. And                                                               %%
%%  Sigma - Valor de refencia o vector (sigma1, sigma2)                              %%
%%  Condición - 1. Mayor o igual, dentro de intervalo                                %%
%%              2. Menor o igual, fuera de intervalo                                 %%
%%  Color - Simplemente el color del que se desea pintar el                          %%
%%          umbralizado de la imagen                                                 %%
%%                                                                                   %%
%%  Salidas:                                                                         %%
%%  G - Imagen 2 marcada con los pixeles de movimiento detectado                     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Proyecto01_259663_259678_260541
function [ G ] = deteccionMovimientoUmbralizacionImagenes( I1, I2, Operacion, Sigma, Condicion, Color )
    tic;
    %% Detectar el movimiento que tiene
    if ((size(I1, 1) == size(I2, 1)) && (size(I1, 2) == size(I2, 2)))  %% Misma cantidad de renglones y columnas
        if (size(I1, 3) == size(I2, 3)) %% Mismos colores
            switch Operacion %% Selección de la estrategia a utilizar
                case 1 %% Substracción
                    IMovimiento = abs(double(I1) - double(I2)); %% Se realiza el absoluto de la resta entre las imágenes
                    IMovimiento = uint8(IMovimiento);
                    maximaDif = max(IMovimiento(:));
                    Sigma = maximaDif * Sigma;
                case 2 %% Or
                    IMovimiento = max(I1, I2);
                case 3 %% And
                    IMovimiento = min(I1, I2);
            end
        end
    end

    %% Umbralizar la imagen resultante del movimiento
    bandIntervalo = false; %% Es un intervalo?
    Sigma1 = Sigma(1);
    Sigma2 = 0;
    if max(size(Sigma))>1 %% Es un intervalo
        Sigma2 = Sigma(2);
        bandIntervalo = true;
    end
    if (size(IMovimiento, 3) > 1) %% Imagen de color
        IGris = rgb2gray(IMovimiento);  %% Se pasa a gris (valores promedio)
    else
        IGris = IMovimiento;
    end
    IUmbralizada = zeros(size(IMovimiento, 1), size(IMovimiento, 2));
    for i=1:size(IMovimiento, 1) %% Renglones
        for j=1:size(IMovimiento, 2) %% Columnas
            valor = IGris(i, j);
            if (bandIntervalo)  %% Intervalo
                if (Condicion == 1) %% Dentro del intervalo
                    if ((valor >= Sigma1) && (valor <= Sigma2))
                        IUmbralizada(i, j) = 255;
                    end
                else  %% Fuera del intervalo
                    if ((valor < Sigma1) || (valor > Sigma2))
                        IUmbralizada(i, j) = 255;
                    end
                end
            else %% Valor
                if (Condicion == 1) %% Mayor o igual
                    if (valor >= Sigma1)
                        IUmbralizada(i, j) = 255;
                    end
                else %% Menor o igual
                    if (valor <= Sigma1)
                        IUmbralizada(i, j) = 255;
                    end
                end
            end
        end
    end
    
    %% Cambiar color del umbralizado para contrastar
    for i=1:size(IUmbralizada, 1)
        for j=1:size(IUmbralizada, 2)
            if(IUmbralizada(i, j) > 0)
                I2(i, j, :) = Color; %% Cambiar color en todos los canales
            end
        end
    end
    G = uint8(I2);
    toc;
end






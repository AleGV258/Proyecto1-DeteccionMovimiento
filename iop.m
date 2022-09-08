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

function [ IMovimiento ] = iop( I1, I2, Operacion )
    tic;
    %% Detectar el movimiento que tiene
    if ((size(I1, 1) == size(I2, 1)) && (size(I1, 2) == size(I2, 2)))  %% Misma cantidad de renglones y columnas
        if (size(I1, 3) == size(I2, 3)) %% Mismos colores
            switch Operacion %% Selecci�n de la estrategia a utilizar
                case 1 %% Substracci�n
                    IMovimiento = abs((I1) - (I2));
                case 2 %% Or
                    IMovimiento = max(I1, I2); 
                case 3 %% And
                    IMovimiento = min(I1, I2);
            end
        end
    end
    toc;
    IMovimiento = uint8(IMovimiento);
end
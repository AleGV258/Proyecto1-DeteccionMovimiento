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

function [ G ] = movDetectado( IUmbralizada, I2, Color )
    tic;    
    %% Cambiar color del umbralizado para contrastar
    for i=1:size(IUmbralizada, 1)
        for j=1:size(IUmbralizada, 2)
            if(IUmbralizada(i, j) > 0)
                I2(i, j, :) = Color; %% Cambiar color en todos los canales
            end
        end
    end
    toc;
    G = uint8(I2);
end

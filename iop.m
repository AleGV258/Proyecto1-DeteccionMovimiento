function [ IMovimiento ] = iop( I1, I2, Operacion)
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
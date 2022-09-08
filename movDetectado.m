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
    G = uint8(I2);
    toc;
end

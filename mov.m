function [ IUmbralizada ] = mov( IMovimiento, Theta, Condicion)
    tic;
    %% Umbralizar la imagen resultante del movimiento
    bandIntervalo = false; %% Es un intervalo?
    Theta1 = Theta(1);
    Theta2 = 0;
    if max(size(Theta)) > 1 %% Es un intervalo
        Theta2 = Theta(2);
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
                    if ((valor >= Theta1) && (valor <= Theta2))
                        IUmbralizada(i, j) = 255;
                    end
                else  %% Fuera del intervalo
                    if ((valor < Theta1) || (valor > Theta2))
                        IUmbralizada(i, j) = 255;
                    end
                end
            else %% Valor
                if (Condicion == 1) %% Mayor o igual
                    if (valor >= Theta1)
                        IUmbralizada(i, j) = 255;
                    end
                else %% Menor o igual
                    if (valor <= Theta1)
                        IUmbralizada(i, j) = 255;
                    end
                end
            end
        end
    end
    toc;
    IUmbralizada = uint8(IUmbralizada);
end
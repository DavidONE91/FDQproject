%% Genera los encabezados para todos los canales en conjunto

%config=conf;

%% Para todos los Canales

FeaturesAllChannel=cell(0); % es necesario debido a que en cada ejecución se concatena al anterior y para cada ejecución debe ser inicializado

for ch=1:1:config.nCanales
FeaturesAllChannel1 = {['CrZeD1_Ch' num2str(ch)];['CrZeD2_Ch' num2str(ch)];['CrZeD3_Ch' num2str(ch)];['CrZeD4_Ch' num2str(ch)];['CrZeD5_Ch' num2str(ch)];['CrZeD6_Ch' num2str(ch)];['CrZeD7_Ch' num2str(ch)];['CrZeD8_Ch' num2str(ch)];['CrZeA8_Ch' num2str(ch)];
['MaxD1_Ch' num2str(ch)];['MaxD2_Ch' num2str(ch)];['MaxD3_Ch' num2str(ch)];['MaxD4_Ch' num2str(ch)];['MaxD5_Ch' num2str(ch)];['MaxD6_Ch' num2str(ch)];['MaxD7_Ch' num2str(ch)];['MaxD8_Ch' num2str(ch)];['MaxA8_Ch' num2str(ch)];
['MinD1_Ch' num2str(ch)];['MinD2_Ch' num2str(ch)];['MinD3_Ch' num2str(ch)];['MinD4_Ch' num2str(ch)];['MinD5_Ch' num2str(ch)];['MinD6_Ch' num2str(ch)];['MinD7_Ch' num2str(ch)];['MinD8_Ch' num2str(ch)];['MinA8_Ch' num2str(ch)];
['MeanD1_Ch' num2str(ch)];['MeanD2_Ch' num2str(ch)];['MeanD3_Ch' num2str(ch)];['MeanD4_Ch' num2str(ch)];['MeanD5_Ch' num2str(ch)];['MeanD6_Ch' num2str(ch)];['MeanD7_Ch' num2str(ch)];['MeanD8_Ch' num2str(ch)];['MeanA8_Ch' num2str(ch)];
['StdD1_Ch' num2str(ch)];['StdD2_Ch' num2str(ch)];['StdD3_Ch' num2str(ch)];['StdD4_Ch' num2str(ch)];['StdD5_Ch' num2str(ch)];['StdD6_Ch' num2str(ch)];['StdD7_Ch' num2str(ch)];['StdD8_Ch' num2str(ch)];['StdA8_Ch' num2str(ch)]};
FeaturesAllChannel=[FeaturesAllChannel;FeaturesAllChannel1]; %concatena
end

FeaturesAllChannel=['Clase';FeaturesAllChannel];


%% Para un solo canal

Features = {'Clase';'CrZeD1';'CrZeD2';'CrZeD3';'CrZeD4';'CrZeD5';'CrZeD6';'CrZeD7';'CrZeD8';'CrZeA8';
        'MaxD1';'MaxD2';'MaxD3';'MaxD4';'MaxD5';'MaxD6';'MaxD7';'MaxD8';'MaxA8';
        'MinD1';'MinD2';'MinD3';'MinD4';'MinD5';'MinD6';'MinD7';'MinD8';'MinA8';
        'MeanD1';'MeanD2';'MeanD3';'MeanD4';'MeanD5';'MeanD6';'MeanD7';'MeanD8';'MeanA8';
        'StdD1';'StdD2';'StdD3';'StdD4';'StdD5';'StdD6';'StdD7';'StdD8';'StdA8'};
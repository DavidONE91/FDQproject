classdef conf % Configuraci�n
    %ALGORITMO DE PREDICCI�N DE CRISIS EPIL�PTICAS 
    %by Francisco David Quinga Quinga
    %===============================================

    %% Propiedades iniciales
    properties

    %Cambiar el path para cada algoritmo piloto
    pathdata='C:\TESIS\DATA_AMERICAN';
    pathextract='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1';
%     pathfeats='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Features';
    pathselecDrops='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\SeleccionPorDrops'; 
    pathselecExtrac='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\SeleccionRegsExtrac'; 
    pathPac1='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Pac1';
    pathPac2='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Pac2';
%     pathPac3='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Pac3';
    pathPac1Labels='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Pac1_Labels';
    pathPac2Labels='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Pac2_Labels';
%     pathPac3Labels='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\Pac3_Labels';
    pathOnePacAllCh='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\OnePac_AllCh';
    pathOnePacAllChLabels='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\OnePac_AllCh_Labels';
    pathAllPacAllCh='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\AllPac_AllCh';
    pathAllPacOneCh='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\AllPac_OneCh';
    pathAllPacOneChLabels='C:\TESIS\AlgoritmoParforAmerican600sS6Db4n8V1Feat1\AllPac_OneCh_Labels';
    
    fm=5000;%fm=frec.muestreo
    ch=0; %Canal EEG-Inicializaci�n
    nCanales=15; %N�mero total de canales
    paciente=0; %Inicializaci�n paciente
    nPacientes=2; %N�mero total de pacientes
    iniseg=0;%inicio segmento en seg.(en este caso 10 seg antes de la crisis), 
    finseg=600;%fin segmento en seg.(en este caso 10 seg antes de la crisis), 
    nSecuencia=6;
    Clases=[0,1]; % Interictal=0 , Preictal=1
    vent=1; % Tiempo de ventana en seg.
    overlap = 0.5; % Porcentaje de solapamiento en cada ventana sobre 1;
    regIni=6; %n�mero de registro inicial de extracci�n de caracteristicas
    regFin=18; %n�mero de registro final. (240 es para tener 40 registros analizados(40 Interictales y 40 Preictales))  
    waveletmadre='db4';    
    nniveles=8; %n�mero de niveles wavelet
     nB=9; % N�mero de bandas wavelet
     nC=5; % N�mero de caracter�sticas
     porcmaxdrop=2; %Porcentaje [0 100]% m�ximo de drops permitidos por sub-registro
    Features;
    FeaturesAllChannel;

    %Notas: Para 10 segundos 1% no es tan significativo como 10%
    %Damos un rango de 240 para evitar volver a ejecutar el programa en caso de falta de
    %registros Interictales debido a eliminaci�n por exceso de drops. Tomar en cuenta que
    %regFin debe ser (regIni+N*nSecuencia), donde N=1,2,3...
        

end
    
    methods

                   
    end
    
end


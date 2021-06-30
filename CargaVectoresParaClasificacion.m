clear;clc;
% tic
config=conf;

%% CARGA DE VECTOR DE CARACERÍSTICAS AllPacAllCh

%% Enlista todos los archivos .csv de la dirección dada
MyFolderInfo = dir(fullfile('AllPac_AllCh','*.csv'));
FolderInfo = struct2cell(MyFolderInfo)';
VectsAllChAllPac = FolderInfo(:,1); 
nVects=length(VectsAllChAllPac(:,1));

%% Carga todos los archivos enlistados

 for chnAPAC=1:nVects
    VectA = VectsAllChAllPac{chnAPAC,1}; % Esto VectsOneChAllPac{...} equivale a char(VectsOneChAllPac(...))
    %% Nombra y carga el vector de características
    RegAPAC='AllPac_AllCh'; %APAC=AllPac_AllCh
    eval([RegAPAC '= readtable(VectA);']);
 end


%% CARGA DE VECTOR DE CARACERÍSTICAS AllPacOneCh

%% % Enlista todos los archivos .csv de la dirección dada

MyFolderInfo = dir(fullfile('AllPac_OneCh_Labels','*.csv'));
FolderInfo = struct2cell(MyFolderInfo)';
VectsOneChAllPac = FolderInfo(:,1); 
nVects=length(VectsOneChAllPac(:,1));

%% Determinar Número de registros
    VectA = VectsOneChAllPac{1,1}; % Esto VectsOneChAllPac{...} equivale a char(VectsOneChAllPac(...))
    %% Separa el string del nombre para verificar
    Divs = split(VectA,{'VectlblAPOCdeCh','reg','tim'});
    SegCanal=char(Divs(3,1));

%% Carga todos los archivos enlistados

 for chnAPOC=1:nVects
    %% Nombra y carga el vector de características
    RegAPOC=['VectlblAPOCdeCh' num2str(chnAPOC) 'sec' num2str(config.nSecuencia) 'reg' SegCanal 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv']; %APOC=AllPac_OneCh
    NameAPOC=['AllPacOneCh_Ch' num2str(chnAPOC)];
    eval([NameAPOC '= readtable(RegAPOC);']);
 end

%% CARGA DE VECTOR DE CARACERÍSTICAS OnePacAllCh

%% Enlista todos los archivos .csv de la dirección dada

MyFolderInfo = dir(fullfile('OnePac_AllCh_Labels','*.csv'));
FolderInfo = struct2cell(MyFolderInfo)';
VectsOneChAllPac = FolderInfo(:,1); 
nVects=length(VectsOneChAllPac(:,1));

%% Determinar Número de registros
    VectA = VectsOneChAllPac{1,1}; % Esto VectsOneChAllPac{...} equivale a char(VectsOneChAllPac(...))
    %% Separa el string del nombre para verificar
    Divs = split(VectA,{'VectlblOPACdePac','reg','tim'});
    SegCanal=char(Divs(3,1));

%% Carga todos los archivos enlistados

 for chnOPAC=1:nVects
    %% Nombra y carga el vector de características
    RegOPAC=['VectlblOPACdePac' num2str(chnOPAC) 'sec' num2str(config.nSecuencia) 'reg' SegCanal 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv']; %APOC=AllPac_OneCh
    NameOPAC=['OnePacAllCh_Pac' num2str(chnOPAC)];
    eval([NameOPAC '= readtable(RegOPAC);']);
 end



%% CARGA DE VECTOR DE CARACERÍSTICAS OnePacOneCh Paciente 1

%% Enlista todos los archivos .csv de la dirección dada que empiezan con 'Total_Features_Labels_Ch'

MyFolderInfo = dir(fullfile('Pac1_Labels','*VectlblOPOCdePac1Ch*.csv'));
FolderInfo = struct2cell(MyFolderInfo)';
VectsOneChOnePac = FolderInfo(:,1); 
nVects=length(VectsOneChOnePac(:,1));

%% Determinar Número de registros
    VectA = VectsOneChOnePac{1,1}; % Esto VectsOneChAllPac{...} equivale a char(VectsOneChAllPac(...))
    %% Separa el string del nombre para verificar el canal
    Divs = split(VectA,{'reg','tim'});
    SegCanal=char(Divs(2,1));

%% Carga todos los archivos enlistados

 for chnOPOC=1:nVects
    %% Nombra y carga el vector de características
    RegOPOC=['VectlblOPOCdePac1Ch' num2str(chnOPOC) 'sec' num2str(config.nSecuencia) 'reg' SegCanal 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv']; %APOC=AllPac_OneCh
    NameOPOC=['OnePacOneCh_Pac1Ch' num2str(chnOPOC)];
    eval([NameOPOC '= readtable(RegOPOC);']);
 end



%% CARGA DE VECTOR DE CARACERÍSTICAS OnePacOneCh Paciente 2

%% Enlista todos los archivos .csv de la dirección dada que empiezan con 'Total_Features_Labels_Ch'
MyFolderInfo = dir(fullfile('Pac2_Labels','*VectlblOPOCdePac2Ch*.csv'));
FolderInfo = struct2cell(MyFolderInfo)';
VectsOneChOnePac = FolderInfo(:,1); 
nVects=length(VectsOneChOnePac(:,1));

%% Determinar Número de registros
    VectA = VectsOneChOnePac{1,1}; % Esto VectsOneChAllPac{...} equivale a char(VectsOneChAllPac(...))
    %% Separa el string del nombre para verificar el canal
    Divs = split(VectA,{'reg','tim'});
    SegCanal=char(Divs(2,1));

%% Carga todos los archivos enlistados

 for chnOPOC=1:nVects
    %% Nombra y carga el vector de características
    RegOPOC=['VectlblOPOCdePac2Ch' num2str(chnOPOC) 'sec' num2str(config.nSecuencia) 'reg' SegCanal 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv']; %APOC=AllPac_OneCh
    NameOPOC=['OnePacOneCh_Pac2Ch' num2str(chnOPOC)];
    eval([NameOPOC '= readtable(RegOPOC);']);
 end
 

%% CARGA DE VECTOR DE CARACERÍSTICAS OnePacOneCh Paciente 3
% MyFolderInfo = dir(fullfile('Pac3_Labels','*VectlblOPOCdePac3Ch*.csv'));
% FolderInfo = struct2cell(MyFolderInfo)';
% VectsOneChOnePac = FolderInfo(:,1); 
% nVects=length(VectsOneChOnePac(:,1));
% 
% %% Determinar Número de registros
%     VectA = VectsOneChOnePac{1,1}; % Esto VectsOneChAllPac{...} equivale a char(VectsOneChAllPac(...))
%     %% Separa el string del nombre para verificar el canal
%     Divs = split(VectA,{'reg','tim'});
%     SegCanal=char(Divs(2,1));
% 
% %% Carga todos los archivos enlistados
% 
%  for chnOPOC=1:nVects
%     %% Nombra y carga el vector de características
%     RegOPOC=['VectlblOPOCdePac3Ch' num2str(chnOPOC) 'sec' num2str(config.nSecuencia) 'reg' SegCanal 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv']; %APOC=AllPac_OneCh
%     NameOPOC=['OnePacOneCh_Pac3Ch' num2str(chnOPOC)];
%     eval([NameOPOC '= readtable(RegOPOC);']);
%  end
 
% toc


beep
 